package cn.medsci.pv.vo;

/**
 * @author weihao.xiao
 */
public class MessagePv4<T> {

    private Integer code;
    private String msg;
    private long total ;
    private T data;

    public Integer getCode() {
        return code;
    }

    public MessagePv4<T> setCode(Integer code) {
        this.code = code;
        return this;
    }

    public String getMsg() {
        return msg;
    }

    public MessagePv4<T> setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public long getTotal() {
        return total;
    }

    public MessagePv4<T> setTotal(long total) {
        this.total = total;
        return this;
    }

    public T getData() {
        return data;
    }

    public MessagePv4<T> setData(T data) {
        this.data = data;
        return this;
    }

    public MessagePv4<T> ok(int statusCode, String statusMsg) {
        this.setCode(statusCode);
        this.setMsg(statusMsg);
        return this;
    }
    public MessagePv4<T> error(int statusCode, String statusMsg) {
        this.setCode(statusCode);
        this.setMsg(statusMsg);
        return this;
    }


}
