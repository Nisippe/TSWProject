package controller;

import model.Merce;
import model.MerceDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/category")
public class CategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoria=request.getParameter("categoria");
        MerceDAO merceDAO=new MerceDAO();
        if( ((ArrayList<Merce>)merceDAO.doRetrieveByCat(categoria)).size()==0)
            throw new MyServletException("Nessun prodotto in questa categoria al momento");

        request.setAttribute("prodotti",merceDAO.doRetrieveByCat(request.getParameter("categoria")));

        RequestDispatcher dispatcher=request.getRequestDispatcher("Shopping.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
