<%--
  Created by IntelliJ IDEA.
  User: saeun
  Date: 6/4/25
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
    <h1>로그인 정보 받아서 세션을 저장</h1>
    <%-- 1) 받아서 처리 부분(controller) --%>
    <%-- 2) html로 생성하는 부분(view) --%>
    <%
    // 스크립트릿(service() 내로 들어감.)
    // 스크립트릿 안에 만들어진 변수는 지역변수
    String id = request.getParameter("userID");
    if(id==null){
        response.sendRedirect("loginForm.html");
    }else{
        // 브라우저가 input태그로 보낸 value는 모두 서버에서는 String으로 인식함.
        String pw = request.getParameter("password");
        // 세션이 유지되는 동안 일반적으로 id, name, nicename, tel로 설정하는 편
        // 실무에서는 pw를 세션으로 잡지 않음!
        session.setAttribute("userid", id);
        session.setAttribute("password", pw);
        out.println("안녕하세요>> " + id + "<br>");
        out.println("<a href='loginInfo.jsp'> 세션으로 저장된 로그인 정보 보기</a>");
    }

    %>
</body>
