package ch05.sec05;

public class IndexOfContainsExample {
    public static void main(String[] args) {
        String subject = "자바 프로그래밍";

        int index = subject.indexOf("프로그래밍");
        System.out.println(index);

        if(subject.contains("자바")){
            System.out.println("자바와 관련된 책이군요.");
        }else{
            System.out.println("자바와 관련된 책이 아닙니다.");
        }
    }
}