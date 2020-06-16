package controller;

import model.Utente;
import model.UtenteDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            UtenteDAO utenteDAO = new UtenteDAO();
            ArrayList<Utente> utenti = (ArrayList<Utente>) utenteDAO.doRetrieveAll();
            String username=request.getParameter("userlogin");
            String password=request.getParameter("passlogin");
            for(int i=0;i<utenti.size();i++) {
                if (utenti.get(i).getNickname().equals(username) && utenti.get(i).getPasswordn().equals(password)) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("utente", utenti.get(i));
                    RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                    dispatcher.forward(request, response);
                }
            }
            throw new ServletException("Login Non corretto");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
