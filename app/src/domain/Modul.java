package domain;

import broker.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class Modul implements Entity{
    private Long id;
    private String naziv;
    private Smer smer;

    public Modul(Long id, String naziv, Smer smer) {
        this.id = id;
        this.naziv = naziv;
        this.smer = smer;
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

    public Smer getSmer() {
        return smer;
    }

    public void setSmer(Smer smer) {
        this.smer = smer;
    }

    @Override
    public int insert() throws SQLException {
        Connection con = DatabaseConnection.getInstance();
 
            String sql="INSERT INTO modul(PKModula,naziv,FKSmera) VALUES(?,?,?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setLong(1, this.getId());
            st.setString(2, this.getNaziv());
            st.setLong(3, this.getSmer().getId());
            st.executeUpdate();
            st.close();
            con.close();

        return 1;
    }

    @Override
    public int update(Entity newEnt) throws SQLException {
        Connection con = DatabaseConnection.getInstance();
        try {
            String sql="UPDATE modul SET naziv=?,FKSmera=? WHERE PKModula=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, ((Modul)newEnt).getNaziv());
            st.setLong(2, ((Modul)newEnt).getSmer().getId());
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
            String sql="DELETE FROM modul WHERE PKModula=?";
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
