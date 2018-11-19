package cn.arvin.demo.vo;

import lombok.Data;
import java.util.Map;

/**
 * 封装校验返回的对象
 */
@Data
public class ValidationResult {
    /**
	 *校验结果是否有错
	 */
    private boolean hasErrors;
	/**
     *校验错误信息
	 */
    private Map<String,String> errorMsg;

    public boolean isHasErrors() {
        return hasErrors;
    }
}
