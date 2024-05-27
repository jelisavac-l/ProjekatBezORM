package domain;

import broker.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class Praksa implements Entity{
    private Long id;
    private Kompanija kompanija;
    private Student student;
    private Date datumPocetka;
    private Date datumZavrsetka;
    
    /*
    Na kojoj poziciji, sta je radio, random informacije da ne bi pravili
    jos 30 kolona koje mogu i ne moraju biti popunjene
    */
    private String komentar;

    public Praksa(Long id, Kompanija kompanija, Student student, 
            Date datumPocetka, Date datumZavrsetka, String komentar) {
        this.id = id;
        this.kompanija = kompanija;
        this.student = student;
        this.datumPocetka = datumPocetka;
        this.datumZavrsetka = datumZavrsetka;
        this.komentar = komentar;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Kompanija getKompanija() {
        return kompanija;
    }

    public void setKompanija(Kompanija kompanija) {
        this.kompanija = kompanija;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Date getDatumPocetka() {
        return datumPocetka;
    }

    public void setDatumPocetka(Date datumPocetka) {
        this.datumPocetka = datumPocetka;
    }

    public Date getDatumZavrsetka() {
        return datumZavrsetka;
    }

    public void setDatumZavrsetka(Date datumZavrsetka) {
        this.datumZavrsetka = datumZavrsetka;
    }

    public String getKomentar() {
        return komentar;
    }

    public void setKomentar(String komentar) {
        this.komentar = komentar;
    }

    @Override
    public int insert() throws SQLException {
        Connection con = DatabaseConnection.getInstance();
        try {
            String sql="INSERT INTO praksa(PKPrakse,FKKompanije,FKStudenta,datumPocetka,datumZavrsetka,komentar) VALUES(?,?,?,?,?,?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setLong(1, this.getId());
            st.setLong(2, this.getKompanija().getId());
            st.setLong(3, this.getStudent().getId());
            st.setDate(4, (java.sql.Date) this.getDatumPocetka());
            st.setDate(5, (java.sql.Date) this.getDatumZavrsetka());
            st.setString(6, this.getKomentar());
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
            String sql="UPDATE praksa SET FKKompanije=?,FKStudenta=?,datumPocetka=?,datumZavrsetka=?,komentar=? WHERE PKKompanije=?";
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
            String sql="DELETE FROM praksa WHERE PKPrakse=?";
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
