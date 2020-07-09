package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MerceDAO {
    public List<Merce> doRetrieveAll(){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM merce");
            ArrayList<Merce> merce = new ArrayList<>();
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Merce m = new Merce();
                m.setNome(rs.getString(1));
                m.setPrezzo(rs.getDouble(2));
                m.setQuantita(rs.getInt(3));
                m.setDescrizione(rs.getString(4));
                m.setCategoria(rs.getString(5));
                m.setTipomerce(rs.getString(6));
                m.setTipoequipaggiamento(rs.getString(7));
                m.setTipomunizioni(rs.getString(8));
                merce.add(m);
            }
            return merce;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<String> doRetrieveCategory(){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement("SELECT DISTINCT categoria FROM Merce");
            ArrayList<String> categorie=new ArrayList<String>();
            ResultSet rs = ps.executeQuery();
            while (rs.next())
                categorie.add(rs.getString(1));
            return categorie;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Merce> doRetrieveByCat(String category){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Merce where categoria=?");
            ps.setString(1, category);
            ArrayList<Merce> merce = new ArrayList<>();
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Merce m = new Merce();
                m.setNome(rs.getString(1));
                m.setPrezzo(rs.getDouble(2));
                m.setQuantita(rs.getInt(3));
                m.setDescrizione(rs.getString(4));
                m.setCategoria(rs.getString(5));
                m.setTipomerce(rs.getString(6));
                m.setTipoequipaggiamento(rs.getString(7));
                m.setTipomunizioni(rs.getString(8));
                merce.add(m);
            }
            return merce;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<Merce> doRetrieveByWord(String nome){
        try(Connection con=ConPool.getConnection()){
            PreparedStatement ps=con.prepareStatement("Select *, MATCH(nome,descrizione) AGAINST (?) from merce WHERE MATCH(nome,descrizione) AGAINST (?)");
            ps.setString(1,nome);
            ps.setString(2,nome);
            ResultSet rs=ps.executeQuery();
            ArrayList<Merce> prodotti=new ArrayList<Merce>();
            while(rs.next()){
                Merce m = new Merce();
                m.setNome(rs.getString(1));
                m.setPrezzo(rs.getDouble(2));
                m.setQuantita(rs.getInt(3));
                m.setDescrizione(rs.getString(4));
                m.setCategoria(rs.getString(5));
                m.setTipomerce(rs.getString(6));
                m.setTipoequipaggiamento(rs.getString(7));
                m.setTipomunizioni(rs.getString(8));
                prodotti.add(m);
            }
            return prodotti;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }



    public Merce doRetrieveByNome(String nome){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM merce WHERE nome=?");
            ps.setString(1,nome);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Merce m = new Merce();
                m.setNome(rs.getString(1));
                m.setPrezzo(rs.getDouble(2));
                m.setQuantita(rs.getInt(3));
                m.setDescrizione(rs.getString(4));
                m.setCategoria(rs.getString(5));
                m.setTipomerce(rs.getString(6));
                m.setTipoequipaggiamento(rs.getString(7));
                m.setTipomunizioni(rs.getString(8));
                return m;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public void doRemove(String name){
        try (Connection con = ConPool.getConnection()) {
            Statement ps = con.createStatement();
            ps.executeUpdate("DELETE from merce where nome='" + name + "'");
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    }

