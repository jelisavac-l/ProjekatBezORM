package domain;

import broker.DatabaseConnection;
import java.sql.SQLException;
import java.util.List;
import java.sql.*;

public class Kompanija implements Entity{
    private Long id;
    private String naziv;
    private Long PIB;
    private APR delatnost;

    public Kompanija(Long id, String naziv, Long PIB, APR delatnost) {
        this.id = id;
        this.naziv = naziv;
        this.PIB = PIB;
        this.delatnost = delatnost;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public Long getPIB() {
        return PIB;
    }

    public void setPIB(Long PIB) {
        this.PIB = PIB;
    }

    public APR getDelatnost() {
        return delatnost;
    }

    public void setDelatnost(APR delatnost) {
        this.delatnost = delatnost;
    }

    @Override
    public int insert() throws SQLException {
        Connection con = DatabaseConnection.getInstance();
        try {
            String sql="INSERT INTO kompanija(PKKompanije,naziv,PIB,FKDelatnosti) VALUES(?,?,?,?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setLong(1, this.getId());
            st.setString(2, this.getNaziv());
            st.setLong(3, this.getPIB());
            st.setLong(4, this.getDelatnost().getId());
            st.executeUpdate();
            st.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Podaci se ne mogu dodati.");
            return 0;
        }
        return 1;
    }

    @Override
    public int update(Entity newEnt) throws SQLException {
        Connection con = DatabaseConnection.getInstance();
        try {
            String sql="UPDATE kompanija SET naziv=?,PIB=?,FKDelatnosti=? WHERE PKKompanije=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, ((Kompanija)newEnt).getNaziv());
            st.setLong(2, ((Kompanija)newEnt).getPIB());
            st.setLong(3, ((Kompanija)newEnt).getDelatnost().getId());
            st.setLong(4, this.getId());
            st.executeUpdate();
            st.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Podaci se ne mogu azurirati.");
            return 0;
        }
        return 1;
    }

    @Override
    public int delete() throws SQLException {
        Connection con = DatabaseConnection.getInstance();
        try {
            String sql="DELETE FROM kompanija WHERE PKKompanije=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setLong(1, this.getId());
            st.executeUpdate();
            st.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Podaci se ne mogu obrisati.");
            return 0;
        }
        return 1;
    }

    
    
}
