package cn.medsci.pv.controller.fileInformationManager.dto;

import com.alibaba.fastjson.JSON;

import java.util.Arrays;
import java.util.List;

public class testMain {

    public static void main(String[] args) {
        String str = "[{\"label\":\"医学评审\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资\n" +
                "料\",\"value\":1},{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据质控\",\"value\":1}]";
        List<NodeInfo> nodeInfos = JSON.parseArray(str, NodeInfo.class);
        System.out.println("nodeInfos = " + nodeInfos);

        List<Integer> numbers = Arrays.asList(1, 2, 1, 3, 3, 2, 4);
        numbers.stream().filter(i -> i % 2 == 0).distinct().forEach(System.out::println);
    }
}
