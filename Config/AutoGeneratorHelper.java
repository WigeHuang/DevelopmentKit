package cn.medsci.pv;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

/**
 * Created by wenhao.wang on 2018/3/16.
 *  mybatis-plus 代码生成器
 */
public class AutoGeneratorHelper {
    /**
     * 执行入口
     * @param args
     */
    public static void main(String[] args){
        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        gc.setOutputDir("E:\\dev\\pv-web")
                .setFileOverride(true)
                .setActiveRecord(true)
                .setEnableCache(false)
                .setBaseResultMap(true)
                .setBaseColumnList(true)
                .setAuthor("weihao.xiao")
                .setMapperName("%sMapper")
                .setXmlName("%sMapper")
                .setServiceName("%sService")
                .setServiceImplName("%sServiceImpl");

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
            dsc
                .setDriverName("com.mysql.jdbc.Driver")
                .setUsername("zhouwen")
                .setPassword("ZhowWen-160111")
                .setUrl("jdbc:mysql://10.0.1.40:3306/pv3.0?useUnicode=true&characterEncoding=utf8");
        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel)
                // 需要生成的表
                .setInclude(new String[] {"file_information"});
        // 包配置
        // 自定义包路径
        PackageConfig pc = new PackageConfig();
        pc.setParent("cn.medsci.pv");
        // 执行生成
        new AutoGenerator().setGlobalConfig(gc)
                .setDataSource(dsc)
                .setStrategy(strategy)
                .setPackageInfo(pc)
                .execute();
    }
}
