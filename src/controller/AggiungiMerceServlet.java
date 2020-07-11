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

@WebServlet("/addp")
public class AggiungiMerceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MerceDAO merceDAO=new MerceDAO();

        String nome = request.getParameter("nome");
        if (!(nome != null)){
            throw new MyServletException("Nome non inserito.");
        }

        String prezzo = request.getParameter("prezzo");
        if (!(prezzo != null)){
            throw new MyServletException("prezzo non inserito.");
        }

        String quantita = request.getParameter("quantita");
        if (!(quantita != null)){
            throw new MyServletException("quantita non inserito.");
        }

        String descrizione = request.getParameter("descrizione");
        if (!(descrizione != null)){
            throw new MyServletException("descrizione non inserito.");
        }

        String categoria = request.getParameter("categoria");
        if (!(categoria != null)){
            throw new MyServletException("Categoria non inserito.");
        }

        String tipomerce = request.getParameter("tipomerce");
        if (!(tipomerce != null)){
            throw new MyServletException("Tipo di merce non inserito.");
        }

        String tipomunizioni = request.getParameter("tipomunizioni");
        if (!(tipomunizioni != null)){
            throw new MyServletException("Tipo di munizioni non inserito.");
        }


        Merce m=new Merce();
        m.setNome(nome);
        m.setPrezzo(Double.parseDouble(prezzo));
        m.setQuantita(Integer.parseInt(quantita));
        m.setDescrizione(descrizione);
        m.setCategoria(categoria);
        m.setTipomerce(tipomerce);
        m.setTipomunizioni(tipomunizioni);

        merceDAO.doSave(m);

        List<String> categorie = (List<String>) getServletContext().getAttribute("categorie");
        if(categorie.contains(categoria)){

        }else{
            categorie.add(categoria);
        }


        RequestDispatcher dispatcher=request.getRequestDispatcher("AddProdotto.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
