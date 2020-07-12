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
                u.setAdmind(rs.getBoolean(2));
                u.setNome(rs.getString(3));
                u.setCognome(rs.getString(4));
                u.setPasswordn(rs.getString(5));
                u.setEmail(rs.getString(6));
                u.setGiorno(rs.getInt(7));
                u.setMese(rs.getInt(8));
                u.setAnno(rs.getInt(9));
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
                u.setAdmind(rs.getBoolean(2));
                u.setNome(rs.getString(3));
                u.setCognome(rs.getString(4));
                u.setPasswordn(rs.getString(5));
                u.setEmail(rs.getString(6));
                u.setGiorno(rs.getInt(7));
                u.setMese(rs.getInt(8));
                u.setAnno(rs.getInt(9));
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
            PreparedStatement ps = con.prepareStatement("INSERT INTO utente VALUES(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, utente.getNickname());
            ps.setBoolean(2,false);
            ps.setString(3, utente.getNome());
            ps.setString(4, utente.getCognome());
            ps.setString(5, utente.getPasswordn());
            ps.setString(6, utente.getEmail());
            ps.setInt(7,utente.getGiorno());
            ps.setInt(8,utente.getMese());
            ps.setInt(9,utente.getAnno());
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public void doRemove(String nickname){
        try (Connection con = ConPool.getConnection()) {
            Statement ps = con.createStatement();
            if(ps.executeUpdate("DELETE from utente where nickname='" + nickname + "'") != 1){
                throw new RuntimeException("DELETE error.");
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    public void doUpdate(String nickname,String nome,String cognome,String email,String password){
        try (Connection con = ConPool.getConnection()){
            PreparedStatement ps=con.prepareStatement("UPDATE Utente SET nome=?,cognome=?,email=?,passwordn=? where nickname=?");
            ps.setString(1,nome);
            ps.setString(2,cognome);
            ps.setString(3,email);
            ps.setString(4,password);
            ps.setString(5,nickname);

            if(ps.executeUpdate() != 1){
                throw new RuntimeException("UPDATE error");
            }

        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }


    }



