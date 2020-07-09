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

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            if (request.getSession().getAttribute("utente") != null) {
                throw new MyServletException("Utente loggato.");
            }
            UtenteDAO utenteDAO = new UtenteDAO();
            String nickname = request.getParameter("nick");
            if (!(nickname != null && nickname.length() >=6)){
                throw new MyServletException("Nickname non valido.");
            }

            String nome = request.getParameter("nome");
            if (!(nome != null)){
                throw new MyServletException("Nome non inserito.");
            }

            String cognome = request.getParameter("cognome");
            if (!(cognome != null)){
                throw new MyServletException("Cognome non inserito.");
            }

            String password = request.getParameter("password");
            if (!(password != null && password.length() >= 8 && !password.toUpperCase().equals(password)
                    && !password.toLowerCase().equals(password))) {
                throw new MyServletException("Password non valida.");
            }

            String cpassword = request.getParameter("cpassword");
            if (!password.equals(cpassword)) {
                throw new MyServletException("Password e conferma differenti.");
            }

            String email = request.getParameter("mail");
            if (!(email != null && email.matches("^\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*(\\.\\w+)+$"))) {
                throw new MyServletException("Email non valida.");
            }

            String data = request.getParameter("date");
            if(!(data!=null))
                throw new MyServletException("Data non inserita");

            String[] dateParts = data.split("-");
            String year = dateParts[0];
            String month = dateParts[1];
            String day = dateParts[2];


            if (!(password.equals(cpassword)))
                throw new ServletException("Le due password sono differenti");

            Utente u = new Utente(nickname,false, nome, cognome, password, email, Integer.parseInt(day), Integer.parseInt(month), Integer.parseInt(year));
            utenteDAO.doSave(u);
            request.getSession().setAttribute("utente",u);
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);

    }



    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
