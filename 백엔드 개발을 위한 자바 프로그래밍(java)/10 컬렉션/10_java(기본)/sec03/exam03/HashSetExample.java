package ch15.sec03.exam03;
import java.util.*;
public class HashSetExample {
    public static void main(String[] args) {
        //HashSet 컬렉션 생성
        Set<String> set = new HashSet<String>();
        //객체 추가
        set.add("Java");
        set.add("JDBC");
        set.add("JSP");
        set.add("Spring");

        // Iterator 패턴으로 순회하며 각 요소를 출력하세요.
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            String x1 = it.next();
            System.out.println(x1);
        }
        System.out.println("-------------------");
        // 향상된 for 문으로 순회하며 각 요소를 출력하세요.
        for(String x2 : set){
            System.out.println(x2);
        }
    }
}
