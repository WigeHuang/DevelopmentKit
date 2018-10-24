package com.coscon.dts.basicdata.util;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author ZhangZhiDong
 * @date 2018-09-29
 */
public class HttpClientUtils {

    private static Logger log = LoggerFactory.getLogger(HttpClientUtils.class);
    private final static Lock LOCK = new ReentrantLock();
    private static CloseableHttpClient httpClient = null;
    private static final String PROXYHOSTNAME = "61.181.250.158";
    private static final Integer PORT = 9000;
    //    http://61.181.250.158:9000/auto/send/nc?userName=zhongyuanhai&json=

    static {
        init();
    }

    private static void init() {
        LOCK.lock();
        try {
            if (httpClient == null) {
                httpClient = HttpClients.createDefault();
            }
        } catch (Exception e) {
            LoggerFactory.getLogger(HttpClientUtils.class).error("HttpClient 初始化异常：" + e.toString());
        } finally {
            LOCK.unlock();
        }
    }

    /**
     * 发送get请求
     *
     * @param url
     * @return
     */
    public static String sendHttpGetRequest(String url) {
        return sendHttpGetRequest(url, "UTF-8", false);
    }

    /**
     * 发送get请求
     *
     * @param url
     * @param decodeCharset
     * @return
     */
    public static String sendHttpGetRequest(String url, String decodeCharset) {
        return sendHttpGetRequest(url, decodeCharset, false);
    }

    /**
     * 发送get请求
     *
     * @param url
     * @param decodeCharset
     * @param useProxy
     * @return
     */
    public static String sendHttpGetRequest(String url, String decodeCharset, boolean useProxy) {
        String responseContent = null;
        HttpEntity entity = null;
        CloseableHttpResponse response = null;
        RequestConfig requestConfig;
        if (useProxy) {
            HttpHost proxy = new HttpHost(PROXYHOSTNAME, PORT, "http");
            requestConfig = RequestConfig.custom().setProxy(proxy).setConnectTimeout(1000 * 60).build();
        } else {
            requestConfig = RequestConfig.custom().setConnectTimeout(1000 * 60).build();

        }
        HttpGet httpGet = new HttpGet(url);
        try {
            httpGet.setConfig(requestConfig);
            response = httpClient.execute(httpGet);
            entity = response.getEntity();
            if (null != entity) {
                responseContent = EntityUtils.toString(entity, decodeCharset == null ? "UTF-8" : decodeCharset);
            }
        } catch (Exception e) {
            log.error("HttpClient GET 请求异常：", e);
        } finally {
            try {
                EntityUtils.consume(entity);
                if (null != response) {
                    response.close();
                }
            } catch (Exception e) {
                log.error("HttpClient GET response关闭异常：", e);
            }
        }
        return responseContent;
    }


    /**
     * 发送post请求
     *
     * @param url
     * @param params
     * @param <T>
     * @return
     */
    public static <T> String sendHttpPostRequest(String url, T params) {
        return sendHttpPostRequest(url, params, false);
    }

    /**
     * 发送post请求
     *
     * @param url
     * @param params
     * @return
     * @throws Exception
     */
    public static <T> String sendHttpPostRequest(String url, T params, boolean useProxy) {
        String respStr = "";
        CloseableHttpResponse response = null;
        RequestConfig requestConfig;
        if (useProxy) {
            HttpHost proxy = new HttpHost(PROXYHOSTNAME, PORT, "http");
            requestConfig = RequestConfig.custom().setProxy(proxy).setConnectTimeout(1000 * 60).build();
        } else {
            requestConfig = RequestConfig.custom().setConnectTimeout(1000 * 60).build();

        }
        try {

            HttpPost httppost = new HttpPost(url);
            httppost.setConfig(requestConfig);
            if (params instanceof String) {
                StringEntity entity = new StringEntity(params.toString(), "UTF-8");
                entity.setContentType("application/x-www-form-urlencoded");
                httppost.setEntity(entity);
            } else {
                HashMap<String, String> stringStringHashMap = (HashMap) params;
                List<BasicNameValuePair> postData = new ArrayList<>();
                for (Map.Entry<String, String> entry : stringStringHashMap.entrySet()) {
                    postData.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
                }
                UrlEncodedFormEntity entity = new UrlEncodedFormEntity(postData, "UTF-8");
                httppost.setEntity(entity);
            }
            log.info("executing request " + httppost.getRequestLine());

            response = httpClient.execute(httppost);
            HttpEntity resEntity = response.getEntity();

            if (resEntity != null) {
                respStr = EntityUtils.toString(resEntity);
            }


        } catch (Exception e) {
            log.error("HttpClient POST 请求异常：", e);
        } finally {
            try {
                if (null != response) {
                    response.close();
                }
            } catch (IOException e) {
                log.error("HttpClient POST response关闭异常：", e);
            }
        }
        return respStr;
    }


    public static List<String> readTxtUtil(String filePath){

        List<String> list = new ArrayList<>();
        try {
            File file = new File(filePath);
            if (file.isFile()&&file.exists()){
                InputStreamReader read = new InputStreamReader(new FileInputStream(file), "UTF-8");
                BufferedReader bufferedReader = new BufferedReader(read);
                String lineTxt;
                while ((lineTxt=bufferedReader.readLine())!=null){
                    log.error(lineTxt);
                    list.add(lineTxt);
                }
                read.close();
            }else {
                log.error("找不到指定的TXT文件：");
                return null;

            }

        }catch (Exception e){
            log.error("读取txt文件内容出错：", e);
            e.printStackTrace();
        }

        return list;
    }


    public static void main(String[] args) {
        String file = "C:\\Users\\Administrator\\Desktop\\Q000020430 (15).txt";
        List<String> list = readTxtUtil(file);
        for (String s : list) {
            System.out.println(s);
        }


    }




}


