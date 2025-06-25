package org.scoula.ex06;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/jstl2/list")
public class BoardController2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<org.scoula.ex06.BoardVO2> list = new org.scoula.ex06.BoardDAO2().getList();
        req.setAttribute("list", list);
        req.getRequestDispatcher("/jstl2/result.jsp").forward(req, resp);
    }
}
