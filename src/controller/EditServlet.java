package controller;

import model.MerceDAO;
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

@WebServlet("/edit")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nickname=request.getParameter("nickname");

        String nome = request.getParameter("nome");
        if (!(nome != null)){
            throw new MyServletException("Nome non inserito.");
        }

        String cognome = request.getParameter("cognome");
        if (!(cognome != null)){
            throw new MyServletException("Cognome non inserito.");
        }

        String email = request.getParameter("email");
        if (!(email != null)){
            throw new MyServletException("email non inserita.");
        }

        String password = request.getParameter("password");
        if (!(password != null)){
            throw new MyServletException("password non inserita.");
        }

        UtenteDAO UtenteDAO=new UtenteDAO();

        UtenteDAO.doUpdate(nickname,nome,cognome,email,password);



        HttpSession session=request.getSession();
        Utente c=(Utente)session.getAttribute("utente");

        Utente u=new Utente(c.getNickname(),c.isAdmind(),nome,cognome,password,email,c.getGiorno(),c.getMese(),c.getAnno());

        session.setAttribute("utente",u);

        RequestDispatcher dispatcher=request.getRequestDispatcher("EditProfile.jsp");
        dispatcher.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
