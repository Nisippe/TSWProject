package controller;

import model.UtenteDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/VerificaUsername")
public class VerificaUsernameServlet extends HttpServlet {
    private final UtenteDAO utenteDAO=new UtenteDAO();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("nick");
        response.setContentType("text/xml");
        if (username != null && username.length() >= 6 && username.matches("^[0-9a-zA-Z]+$")
                && utenteDAO.doRetrieveByNickname(username) == null) {
            response.getWriter().append("<ok/>");
        } else {
            response.getWriter().append("<no/>");
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
