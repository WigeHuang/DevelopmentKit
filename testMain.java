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


		List<Integer> list = new ArrayList<Integer>();
        for (int i = 1; i < 52; i++) {
            list.add(i);
        }

        fenye(list, 10);
    }


	
    public static void fenye(List list, int pagesize) {

        int totalcount = list.size();
        int pagecount = 0;
        int m = totalcount % pagesize;
        if (m > 0) {
            pagecount = totalcount / pagesize + 1;
        } else {
            pagecount = totalcount / pagesize;
        }

        for (int i = 1; i <= pagecount; i++) {
            if (m == 0) {
                List<Integer> subList = list.subList((i - 1) * pagesize, pagesize * (i));
                System.out.println(subList);
            } else {
                if (i == pagecount) {
                    List<Integer> subList = list.subList((i - 1) * pagesize, totalcount);
                    System.out.println(subList);
                } else {
                    List<Integer> subList = list.subList((i - 1) * pagesize, pagesize * (i));
                    System.out.println(subList);
                }


            }
        }

    }
}
