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
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns="", loadOnStartup=1)
public class HomeServlet extends HttpServlet {
    private final MerceDAO merceDAO=new MerceDAO();

    public void init() throws ServletException{
        MerceDAO merceDAO=new MerceDAO();
        List<Merce> prodotti=merceDAO.doRetrieveAll();
        List<String> categorie=merceDAO.doRetrieveCategory();
        getServletContext().setAttribute("categorie",categorie);
        getServletContext().setAttribute("prodotti",prodotti);
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request,response);
    }

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
        doGet(request,response);
    }
}
