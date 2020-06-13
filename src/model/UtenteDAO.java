package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UtenteDAO {

    public List<Utente> doRetrieveAll(){
        try (Connection con = ConPool.getConnection()) {
            System.out.println("ENTRATO!");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Utente");
            ArrayList<Utente> utenti = new ArrayList<>();
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Utente u = new Utente();
                u.setNickname(rs.getString(1));
                u.setNome(rs.getString(2));
                u.setCognome(rs.getString(3));
                u.setPasswordn(rs.getString(4));
                u.setEmail(rs.getString(5));
                u.setGiorno(rs.getInt(6));
                u.setMese(rs.getInt(7));
                u.setAnno(rs.getInt(8));
                utenti.add(u);
            }
            return utenti;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Utente doRetrieveByNickname(String nickname) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Utente where nickname=?");
            ps.setString(1, nickname);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Utente u = new Utente();
                u.setNickname(rs.getString(1));
                u.setNome(rs.getString(2));
                u.setCognome(rs.getString(3));
                u.setPasswordn(rs.getString(4));
                u.setEmail(rs.getString(5));
                u.setGiorno(rs.getInt(6));
                u.setMese(rs.getInt(7));
                u.setAnno(rs.getInt(8));
                return u;
            }
            return null;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


        public void doSave(Utente utente){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement("INSERT INTO utente VALUES(?,?,?,?,?,?,?,?)");
            ps.setString(1, utente.getNickname());
            ps.setString(2, utente.getNome());
            ps.setString(3, utente.getCognome());
            ps.setString(4, utente.getPasswordn());
            ps.setString(5, utente.getEmail());
            ps.setInt(6,utente.getGiorno());
            ps.setInt(7,utente.getMese());
            ps.setInt(8,utente.getAnno());
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    }



