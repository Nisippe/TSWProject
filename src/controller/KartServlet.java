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

@WebServlet("/Carrello")
public class KartServlet extends HttpServlet {
    private final MerceDAO prodottoDAO = new MerceDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session.getAttribute("utente") == null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("login-register.jsp");
            dispatcher.forward(request, response);
        } else {


            Carrello carrello = (Carrello) session.getAttribute("carrello");
            if (carrello == null) {
                carrello = new Carrello();
                session.setAttribute("carrello", carrello);
            }

            String nome = ((request.getParameter("nome")));


            if (nome != null) {
                Carrello.ProdottoQuantita prod = carrello.get(nome);
                if (prod != null)
                    prod.setQuantita(prod.getQuantita() + 1);
                else
                    carrello.put(prodottoDAO.doRetrieveByNome(nome));
            } else {
                String setNumStr = request.getParameter("setNum");
                if (setNumStr != null ) {
                    if(carrello.get(setNumStr).getQuantita()==1)
                    carrello.remove(setNumStr);
                    else{
                        Carrello.ProdottoQuantita prod = carrello.get(setNumStr);
                        prod.setQuantita(prod.getQuantita()-1);
                    }

                }
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher("Carrello.jsp");
            dispatcher.forward(request, response);
        }
    }
}
