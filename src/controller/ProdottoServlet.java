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

@WebServlet("/Prodotto")
public class ProdottoServlet extends HttpServlet {
    private final MerceDAO merceDAO=new MerceDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome=request.getParameter("nome");
        Merce m=merceDAO.doRetrieveByNome(nome);
        if(m==null)
            throw new MyServletException("Prodotto non trovato!");
        request.setAttribute("prodotto",m);
        RequestDispatcher dispatcher=request.getRequestDispatcher("prodotto.jsp");
        dispatcher.forward(request,response);
    }
}
