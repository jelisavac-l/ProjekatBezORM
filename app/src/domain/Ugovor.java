package domain;

import broker.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class Ugovor implements Entity{
    private Long id;
    private Date datumPotpisivanja;
    private Date datumIsteka;
    private String sadrzaj;

    public Ugovor(Long id, Date datumPotpisivanja, Date datumIsteka, String sadrzaj) {
        this.id = id;
        this.datumPotpisivanja = datumPotpisivanja;
        this.datumIsteka = datumIsteka;
        this.sadrzaj = sadrzaj;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDatumPotpisivanja() {
        return datumPotpisivanja;
    }

    public void setDatumPotpisivanja(Date datumPotpisivanja) {
        this.datumPotpisivanja = datumPotpisivanja;
    }

    public Date getDatumIsteka() {
        return datumIsteka;
    }

    public void setDatumIsteka(Date datumIsteka) {
        this.datumIsteka = datumIsteka;
    }

    public String getSadrzaj() {
        return sadrzaj;
    }

    public void setSadrzaj(String sadrzaj) {
        this.sadrzaj = sadrzaj;
    }

    @Override
    public int insert() throws SQLException {
        Connection con = DatabaseConnection.getInstance();
        try {
            String sql="INSERT INTO ugovor(PKUgovora,datumPotpisivanja,datumIsteka,sadrzaj) VALUES(?,?,?,?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setLong(1, this.getId());
            st.setDate(2, (java.sql.Date) this.getDatumPotpisivanja());
            st.setDate(3, (java.sql.Date) this.getDatumIsteka());  
            st.setString(4, this.getSadrzaj());
            System.out.println(st);
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
            String sql="UPDATE ugovor SET datumPotpisivanja=?,datumIsteka=?,sadrzaj=? WHERE PKUgovora=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setDate(1, (java.sql.Date) ((Ugovor)newEnt).getDatumPotpisivanja());
            st.setDate(2, (java.sql.Date) ((Ugovor)newEnt).getDatumIsteka());
            st.setString(3, ((Ugovor)newEnt).getSadrzaj());
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
            String sql="DELETE FROM ugovor WHERE PKUgovora=?";
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
