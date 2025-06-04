<%--
  Created by IntelliJ IDEA.
  User: saeun
  Date: 6/4/25
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <body>
    <h1>로그인정보보기</h1>
    <%
      // 스크립트릿
      String id = (String) session.getAttribute("userid");
      if (id == null) {
        response.sendRedirect("loginForm.html");
      } else {
        String pw = (String) session.getAttribute("password");
        out.print("사용자 id >> " + id + "<br>");
        out.print("사용자 pw >> " + pw + "<br>");
        out.print("<a href='logout.jsp'>로그아웃</a>");
      }
    %>
  사용자 id >> <%= id %><br> <%-- 표현식(출력), expression --%>
  <a href="logout.jsp">로그아웃 화면으로</a>
  </body>
</html>

