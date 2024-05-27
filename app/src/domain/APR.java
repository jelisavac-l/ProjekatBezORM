package domain;

import broker.DatabaseConnection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class APR implements Entity{
    private Long id;
    private String nazivDelatnosti;
    private int sifraDelatnosti;

    public APR(Long id, String nazivDelatnosti, int sifraDelatnosti) {
        this.id = id;
        this.nazivDelatnosti = nazivDelatnosti;
        this.sifraDelatnosti = sifraDelatnosti;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNazivDelatnosti() {
        return nazivDelatnosti;
    }

    public void setNazivDelatnosti(String nazivDelatnosti) {
        this.nazivDelatnosti = nazivDelatnosti;
    }

    public int getSifraDelatnosti() {
        return sifraDelatnosti;
    }

    public void setSifraDelatnosti(int sifraDelatnosti) {
        this.sifraDelatnosti = sifraDelatnosti;
    }

    @Override
    public int insert() throws SQLException {
        Connection con = DatabaseConnection.getInstance();
        try {
            String sql="INSERT INTO apr(PKDelatnosti,naziv,sifraDelatnosti) VALUES(?,?,?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setLong(1, this.getId());
            st.setString(2, this.getNazivDelatnosti());
            st.setInt(3, this.getSifraDelatnosti());    
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
            String sql="UPDATE apr SET naziv=?,sifraDelatnosti=? WHERE PKDelatnosti=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, ((APR)newEnt).getNazivDelatnosti());
            st.setInt(2, ((APR)newEnt).getSifraDelatnosti());
            st.setLong(3, this.getId());
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
            String sql="DELETE FROM apr WHERE PKDelatnosti=?";
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
