<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
  <%
    session.invalidate();
    response.sendRedirect("loginForm.html");
  %>
</body>
</html>
