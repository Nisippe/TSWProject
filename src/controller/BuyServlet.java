package controller;

import model.Carrello;
import model.Merce;
import model.MerceDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@WebServlet("/todo")
public class BuyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Carrello c=(Carrello)session.getAttribute("carrello");

        Set<String> prodotti = (Set<String>) c.getAll();

        MerceDAO merceDAO=new MerceDAO();
        Iterator iterator=prodotti.iterator();

        while(iterator.hasNext()) {
            merceDAO.doBuy((String) iterator.next());
        }
        session.setAttribute("carrello",new Carrello());

        RequestDispatcher dispatcher=request.getRequestDispatcher("End.jsp");
        dispatcher.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
