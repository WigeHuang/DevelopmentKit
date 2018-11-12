package cn.medsci.pv.vo;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

public class MessageWu<T> {

    private Map<String,Object> meta = new HashMap<>();
    private Integer code;
    private String msg;
    private long total ;
    private T data;

    public Map<String, Object> getMeta() {
        return meta;
    }

    public MessageWu<T> setMeta(Map<String, Object> meta) {
        this.meta = meta;
        return this;
    }

    public Integer getCode() {
        return code;
    }

    public MessageWu<T> setCode(Integer code) {
        this.code = code;
        return this;
    }

    public String getMsg() {
        return msg;
    }

    public MessageWu<T> setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public long getTotal() {
        return total;
    }

    public MessageWu<T> setTotal(long total) {
        this.total = total;
        return this;
    }

    public T getData() {
        return data;
    }

    public MessageWu<T> setData(T data) {
        this.data = data;
        return this;
    }

    public MessageWu<T> addMeta(String key, Object object) {
        this.meta.put(key,object);
        return this;
    }
    public MessageWu<T> addData(String key,Object object) {
        return this;
    }
    public MessageWu<T> ok(int statusCode,String statusMsg) {
        this.addMeta("success",Boolean.TRUE);
        this.setCode(statusCode);
        this.setMsg(statusMsg);
        this.addMeta("timestamp",new Timestamp(System.currentTimeMillis()));
        return this;
    }
    public MessageWu<T> error(int statusCode,String statusMsg) {
        this.addMeta("failure",Boolean.FALSE);
        this.setCode(statusCode);
        this.setMsg(statusMsg);
        this.addMeta("timestamp",new Timestamp(System.currentTimeMillis()));
        return this;
    }


}
