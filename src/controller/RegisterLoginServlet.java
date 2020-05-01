package controller;

import model.Utente;
import model.UtenteDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Register")
public class RegisterLoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UtenteDAO utenteDAO=new UtenteDAO();
        ArrayList<Utente> utenti = (ArrayList<Utente>) utenteDAO.doRetrieveAll();
        String nickname=request.getParameter("nick");
        for(Utente e : utenti)
            if(nickname.equals(e.getNickname())) {
                System.out.print("Nickname già preso");
                throw new ServletException();
            }
        String nome=request.getParameter("nome");
        String cognome=request.getParameter("cognome");
        String password=request.getParameter("password");
        String cpassword=request.getParameter("cpassword");
        String email=request.getParameter("mail");
        String data=request.getParameter("date");

        String [] dateParts = data.split("-");
        String year = dateParts[0];
        String month = dateParts[1];
        String day = dateParts[2];



        if(!(password.equals(cpassword)))
            throw new ServletException("Le due password sono differenti");

        Utente u=new Utente(nickname,nome,cognome,password,email,Integer.parseInt(day),Integer.parseInt(month),Integer.parseInt(year));
        utenteDAO.doSave(u);

        RequestDispatcher dispatcher=request.getRequestDispatcher("./index.jsp");
        dispatcher.forward(request,response);


    }

}
