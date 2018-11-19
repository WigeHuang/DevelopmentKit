### 前言说明：

	参考地址：https://www.cnblogs.com/mr-yang-localhost/p/7812038.html

	hibernate validator（[官方文档](http://hibernate.org/validator/documentation/)）提供了一套比较完善、便捷的验证实现方式。spring-boot-starter-web`包里面有`hibernate-validator包，不需要引用hibernate validator依赖。

#### 一、在代码中调用工具类进行参数校验：

ValidationUtils.validate(requestDto);

以下是对hibernate-validator中部分注解进行描述：
@AssertTrue    用于boolean字段，该字段只能为true      	
@AssertFalse    该字段的值只能为false    	
@CreditCardNumber    对信用卡号进行一个大致的验证    	
@DecimalMax    只能小于或等于该值   		 
@DecimalMin    只能大于或等于该值    	
@Digits(integer=,fraction=)    检查是否是一种数字的整数、分数,小数位数的数字    	
@Email    检查是否是一个有效的email地址   	 
@Future    检查该字段的日期是否是属于将来的日期    	
@Length(min=,max=)    检查所属的字段的长度是否在min和max之间,只能用于字符串    	
@Max    该字段的值只能小于或等于该值   	 
@Min    该字段的值只能大于或等于该值    	
@NotNull    不能为null    	
@NotBlank    不能为空，检查时会将空格忽略    	
@NotEmpty    不能为空，这里的空是指空字符串    	
@Null    检查该字段为空    	
@Past    检查该字段的日期是在过去    			
@Pattern(regex=,flag=)    被注释的元素必须符合指定的正则表达式    	
@Range(min=,max=,message=)    被注释的元素必须在合适的范围内    	
@Size(min=, max=)    检查该字段的size是否在min和max之间，可以是字符串、数组、集合、Map等    	
@URL(protocol=,host,port)    检查是否是一个有效的URL，如果提供了protocol，host等，则该URL还需满足提供的条件    	
@Valid    该注解主要用于字段为一个包含其他对象的集合或map或数组的字段，或该字段直接为一个其他对象的引用，这样在检查当前对象的同时也会检查该字段所引用的对象

#### 二、使用hibernate提供的在控制器接收参数时添加@Valid注解,可以通过BindingResult对象获取相关的错误提示,需紧跟参数，如下代码示例：

```java
/**
* 处理提交的用户注册信息。
* @param model
* @return
*/
@RequestMapping (method = RequestMethod.POST)
public String doRegister(@Valid User user, BindingResult result){
	if(logger.isDebugEnabled()){
		logger.debug("process url[/user], method[post] in "+getClass());
	}
	//校验没有通过
	if(result.hasErrors()){
		return "user";
	}
	if(user != null){
		userService.saveUser(user);
	}
	return "user";
}
```

#### 三、hibernate的校验模式

一次性返回了所有验证不通过的集合，通常按顺序验证到第一个字段不符合验证要求时，就可以直接拒绝请求了。Hibernate Validator有以下两种验证模式：

1、普通模式（默认是这个模式）
　　普通模式(会校验完所有的属性，然后返回所有的验证失败信息)

2、快速失败返回模式
　　快速失败返回模式(只要有一个验证失败，则返回)

两种验证模式配置方式：（[参考官方文档](https://docs.jboss.org/hibernate/stable/validator/reference/en-US/html_single/#section-provider-specific-settings)）

failFast：true  快速失败返回模式    false 普通模式 

```java
ValidatorFactory validatorFactory = Validation.byProvider( HibernateValidator.class )
        .configure()
        .failFast( true )
        .buildValidatorFactory();
Validator validator = validatorFactory.getValidator();
```

和 （hibernate.validator.fail_fast：true  快速失败返回模式    false 普通模式）

```java
ValidatorFactory validatorFactory = Validation.byProvider( HibernateValidator.class )
        .configure()
        .addProperty( "hibernate.validator.fail_fast", "true" )
        .buildValidatorFactory();
Validator validator = validatorFactory.getValidator();
```

#### 四、hibernate的两种校验

配置hibernate Validator为快速失败返回模式：

```java
@Configuration
public class ValidatorConfiguration {
    @Bean
    public Validator validator(){
        ValidatorFactory validatorFactory = Validation.byProvider( HibernateValidator.class )
                .configure()
                .addProperty( "hibernate.validator.fail_fast", "true" )
                .buildValidatorFactory();
        Validator validator = validatorFactory.getValidator();

        return validator;
    }
}

```

##### 1、请求参数校验

如demo里示例的，验证请求参数时，在@RequestBody DemoModel demo之间加注解 @Valid，然后后面加BindindResult即可；多个参数的，可以加多个@Valid和BindingResult，如：

public void test()(@RequestBody @Valid DemoModel demo, BindingResult result)

public void test()(@RequestBody @Valid DemoModel demo, BindingResult result,@RequestBody @Valid DemoModel demo2, BindingResult result2)

```java
@RequestMapping("/demo2")
public void demo2(@RequestBody @Valid DemoModel demo, BindingResult result){
	if(result.hasErrors()){
		for (ObjectError error : result.getAllErrors()) {
			System.out.println(error.getDefaultMessage());
		}
	}
}
```

### 2、GET参数校验(@RequestParam参数校验)

使用校验bean的方式，没有办法校验RequestParam的内容，一般在处理Get请求(或参数比较少)的时候，会使用下面这样的代码：

```java
 @RequestMapping(value = "/demo3", method = RequestMethod.GET)
 public void demo3(@RequestParam(name = "grade", required = true) int grade,
 					@RequestParam(name = "classroom", required = true) int classroom) {
        System.out.println(grade + "," + classroom);
 }
```

使用@Valid注解，对RequestParam对应的参数进行注解，是无效的，需要使用@Validated注解来使得验证生效。如下所示：

#### a.此时需要使用MethodValidationPostProcessor 的Bean：

```java
@Bean
public MethodValidationPostProcessor methodValidationPostProcessor() {
	/**默认是普通模式，会返回所有的验证不通过信息集合*/
	return new MethodValidationPostProcessor();
}
```

或 可对MethodValidationPostProcessor 进行设置Validator（因为此时不是用的Validator进行验证，Validator的配置不起作用）

```java
@Bean
public MethodValidationPostProcessor methodValidationPostProcessor() {
    MethodValidationPostProcessor postProcessor = new MethodValidationPostProcessor();
    /**设置validator模式为快速失败返回*/
    postProcessor.setValidator(validator());
    return postProcessor;
}

@Bean
public Validator validator(){
    ValidatorFactory validatorFactory = Validation.byProvider( HibernateValidator.class )
        .configure()
        .addProperty( "hibernate.validator.fail_fast", "true" )
        .buildValidatorFactory();
    Validator validator = validatorFactory.getValidator();

    return validator;
}
```

#### b.方法所在的Controller上加注解@Validated

```java
@RequestMapping("/validation")
@RestController
@Validated
public class ValidationController {
    /**如果只有少数对象，直接把参数写到Controller层，然后在Controller层进行验证就可以了。*/
    @RequestMapping(value = "/demo3", method = RequestMethod.GET)
    public void demo3(@Range(min = 1, max = 9, message = "年级只能从1-9")
                      @RequestParam(name = "grade", required = true)
                      int grade,
                      @Min(value = 1, message = "班级最小只能1")
                      @Max(value = 99, message = "班级最大只能99")
                      @RequestParam(name = "classroom", required = true)
                      int classroom) {
        System.out.println(grade + "," + classroom);
    }
}
```

#### c.返回验证信息提示

可以看到：验证不通过时，抛出了ConstraintViolationException异常，使用同一捕获异常处理：

```java
@ControllerAdvice
@Component
public class GlobalExceptionHandler {

    @ExceptionHandler
    @ResponseBody
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public String handle(ValidationException exception) {
        if(exception instanceof ConstraintViolationException){
            ConstraintViolationException exs = (ConstraintViolationException) exception;

            Set<ConstraintViolation<?>> violations = exs.getConstraintViolations();
            for (ConstraintViolation<?> item : violations) {
　　　　　　　　　　/**打印验证不通过的信息*/
                System.out.println(item.getMessage());
            }
        }
        return "bad request, " ;
    }
}
```

#### .验证

**浏览器服务请求地址：http://localhost:8080/validation/demo3?grade=18&classroom=888**

没有配置快速失败返回的MethodValidationPostProcessor 时输出信息如下：

```
年级只能从1-9
班级最大只能99
```

配置了快速失败返回的MethodValidationPostProcessor 时输出信息如下：

年级只能从1-9

**浏览器服务请求地址：http://localhost:8080/validation/demo3?grade=0&classroom=0**

没有配置快速失败返回的MethodValidationPostProcessor 时输出信息如下：

```
年级只能从1-9
班级最小只能1
```

配置了快速失败返回的MethodValidationPostProcessor 时输出信息如下：

年级只能从1-9

### 3、model校验

待校验的model：

```java
@Data
public class Demo2 {
    @Length(min = 5, max = 17, message = "length长度在[5,17]之间")
    private String length;

    /**@Size不能验证Integer，适用于String, Collection, Map and arrays*/
    @Size(min = 1, max = 3, message = "size在[1,3]之间")
    private String age;

    @Range(min = 150, max = 250, message = "range在[150,250]之间")
    private int high;

    @Size(min = 3,max = 5,message = "list的Size在[3,5]")
    private List<String> list;
}
```

验证model，以下全部验证通过：

@Autowired
    private Validator validator;
    

```java
@RequestMapping("/demo3")
public void demo3(){
    Demo2 demo2 = new Demo2();
    demo2.setAge("111");
    demo2.setHigh(150);
    demo2.setLength("ABCDE");
    demo2.setList(new ArrayList<String>(){{add("111");add("222");add("333");}});
    Set<ConstraintViolation<Demo2>> violationSet = validator.validate(demo2);
    for (ConstraintViolation<Demo2> model : violationSet) {
        System.out.println(model.getMessage());
    }
}
```
### 4、对象级联校验

对象内部包含另一个对象作为属性，属性上加@Valid，可以验证作为属性的对象内部的验证：（验证Demo2示例时，可以验证Demo2的字段）

```java
@Data
public class Demo2 {
    @Size(min = 3,max = 5,message = "list的Size在[3,5]")
    private List<String> list;

    @NotNull
    @Valid
    private Demo3 demo3;
}

@Data
public class Demo3 {
    @Length(min = 5, max = 17, message = "length长度在[5,17]之间")
    private String extField;
}
```

级联校验：

```java
/**前面配置了快速失败返回的Bean*/
    @Autowired
    private Validator validator;
@RequestMapping("/demo3")
public void demo3(){
    Demo2 demo2 = new Demo2();
    demo2.setList(new ArrayList<String>(){{add("111");add("222");add("333");}});

    Demo3 demo3 = new Demo3();
    demo3.setExtField("22");
    demo2.setDemo3(demo3);
    Set<ConstraintViolation<Demo2>> violationSet = validator.validate(demo2);
    for (ConstraintViolation<Demo2> model : violationSet) {
        System.out.println(model.getMessage());
    }
}
```
```
可以校验Demo3的extField字段。
```



### 5、分组校验

**结论：分组顺序校验时，按指定的分组先后顺序进行验证，前面的验证不通过，后面的分组就不行验证。**

有这样一种场景，新增用户信息的时候，不需要验证userId（因为系统生成）；修改的时候需要验证userId，这时候可用用户到validator的分组验证功能。

设置validator为普通验证模式（**"hibernate.validator.fail_fast", "false"**），用到的验证GroupA、GroupB和model：

GroupA、GroupB：

```java
public interface GroupA {
}

public interface GroupB {
}
```

验证model：Person 

```java
@Data
public class Person {
    @NotBlank
    @Range(min = 1,max = Integer.MAX_VALUE,message = "必须大于0",groups = {GroupA.class})
    /**用户id*/
    private Integer userId;
    @NotBlank
    @Length(min = 4,max = 20,message = "必须在[4,20]",groups = {GroupB.class})
    /**用户名*/
    private String userName;
    @NotBlank
    @Range(min = 0,max = 100,message = "年龄必须在[0,100]",groups={Default.class})
    /**年龄*/
    private Integer age;
    @Range(min = 0,max = 2,message = "性别必须在[0,2]",groups = {GroupB.class})
    /**性别 0：未知；1：男；2：女*/
    private Integer sex;
}
```

如上Person所示，3个分组分别验证字段如下：

- GroupA验证字段userId；

- GroupB验证字段userName、sex；

- Default验证字段age(Default是Validator自带的默认分组)

  #### a、分组

  只验证GroupA、GroupB标记的分组：

  ```java
  @RequestMapping("/demo5")
  public void demo5(){
      Person p = new Person();
      /**GroupA验证不通过*/
      p.setUserId(-12);
      /**GroupA验证通过*/
      //p.setUserId(12);
      p.setUserName("a");
      p.setAge(110);
      p.setSex(5);
      Set<ConstraintViolation<Person>> validate = validator.validate(p, GroupA.class, GroupB.class);
      for (ConstraintViolation<Person> item : validate) {
          System.out.println(item);
      }
  }
  ```

  或

  ```java
  @RequestMapping("/demo6")
      public void demo6(@Validated({GroupA.class, GroupB.class}) Person p, BindingResult result){
          if(result.hasErrors()){
              List<ObjectError> allErrors = result.getAllErrors();
              for (ObjectError error : allErrors) {
                  System.out.println(error);
              }
          }
      }
  ```

  ##### GroupA、GroupB、Default都验证不通过的情况：

  验证信息如下所示：

  ```java
  ConstraintViolationImpl{interpolatedMessage='必须在[4,20]', propertyPath=userName, rootBeanClass=class validator.demo.project.model.Person, messageTemplate='必须在[4,20]'}
  ConstraintViolationImpl{interpolatedMessage='必须大于0', propertyPath=userId, rootBeanClass=class validator.demo.project.model.Person, messageTemplate='必须大于0'}
  ConstraintViolationImpl{interpolatedMessage='性别必须在[0,2]', propertyPath=sex, rootBeanClass=class validator.demo.project.model.Person, messageTemplate='性别必须在[0,2]'}
  ```

  ##### GroupA验证通过、GroupB、Default验证不通过的情况：

  验证信息如下所示：

  ```java
  ConstraintViolationImpl{interpolatedMessage='必须在[4,20]', propertyPath=userName, rootBeanClass=class validator.demo.project.model.Person, messageTemplate='必须在[4,20]'}
  ConstraintViolationImpl{interpolatedMessage='性别必须在[0,2]', propertyPath=sex, rootBeanClass=class validator.demo.project.model.Person, messageTemplate='性别必须在[0,2]'}
  ```

  #### b、组序列

  除了按组指定是否验证之外，还可以指定组的验证顺序，前面组验证不通过的，后面组不进行验证：

  指定组的序列（GroupA》GroupB》Default）：

  ```java
  @GroupSequence({GroupA.class, GroupB.class, Default.class})
  public interface GroupOrder {
  }
  ```

  测试demo：

  ```java
  @RequestMapping("/demo7")
      public void demo7(){
          Person p = new Person();
          /**GroupA验证不通过*/
          //p.setUserId(-12);
          /**GroupA验证通过*/
          p.setUserId(12);
          p.setUserName("a");
          p.setAge(110);
          p.setSex(5);
          Set<ConstraintViolation<Person>> validate = validator.validate(p, GroupOrder.class);
          for (ConstraintViolation<Person> item : validate) {
              System.out.println(item);
          }
      }
  ```

  或

  ```java
  @RequestMapping("/demo8")
      public void demo8(@Validated({GroupOrder.class}) Person p, BindingResult result){
          if(result.hasErrors()){
              List<ObjectError> allErrors = result.getAllErrors();
              for (ObjectError error : allErrors) {
                  System.out.println(error);
              }
          }
      }
  ```

  ##### GroupA、GroupB、Default都验证不通过的情况：

  验证信息如下所示：

  ```java
  ConstraintViolationImpl{interpolatedMessage='必须大于0', propertyPath=userId, rootBeanClass=class validator.demo.project.model.Person, messageTemplate='必须大于0'}
  ```

  #### GroupA验证通过、GroupB、Default验证不通过的情况：

  验证信息如下所示：

  ```java
  onstraintViolationImpl{interpolatedMessage='必须在[4,20]', propertyPath=userName, rootBeanClass=class validator.demo.project.model.Person, messageTemplate='必须在[4,20]'}
  ConstraintViolationImpl{interpolatedMessage='性别必须在[0,2]', propertyPath=sex, rootBeanClass=class validator.demo.project.model.Person, messageTemplate='性别必须在[0,2]'}
  ```

  **结论：分组顺序校验时，按指定的分组先后顺序进行验证，前面的验证不通过，后面的分组就不行验证。**

