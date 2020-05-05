package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MerceDAO {
    public List<Merce> doRetrieveAll(){
        try (Connection con = ConPool.getConnection()) {
            System.out.println("ENTRATO!");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Merce");
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
}
