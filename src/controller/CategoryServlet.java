package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/category")
public class CategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.print("mammt");
        String filter;
            if(request.getParameter("rifle") != null)
                filter="rifle";
            else if(request.getParameter("heavy") != null)
                filter="heavy";
            else if(request.getParameter("mitra") != null)
                filter="mitra";
            else
                filter="pistol";

            request.setAttribute("filtro",filter);
            System.out.print("mammt");
        RequestDispatcher dispatcher=request.getRequestDispatcher("Shopping.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
