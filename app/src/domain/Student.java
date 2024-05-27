package domain;

import broker.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class Student implements Entity{
    private Long id;
    private String ime;
    private String prezime;
    private String indeks;
    private String email;
    private String telefon;
    private int stepenStudija;
    private int godinaStudija;
    private boolean budzet;
    private Smer smer;
    private Modul modul;

    public Student(Long id, String ime, String prezime, String indeks, 
            String email, String telefon, int stepenStudija, int godinaStudija, 
            boolean budzet, Smer smer, Modul modul) {
        this.id = id;
        this.ime = ime;
        this.prezime = prezime;
        this.indeks = indeks;
        this.email = email;
        this.telefon = telefon;
        this.stepenStudija = stepenStudija;
        this.godinaStudija = godinaStudija;
        this.budzet = budzet;
        this.smer = smer;
        this.modul = modul;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getIndeks() {
        return indeks;
    }

    public void setIndeks(String indeks) {
        this.indeks = indeks;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public int getStepenStudija() {
        return stepenStudija;
    }

    public void setStepenStudija(int stepenStudija) {
        this.stepenStudija = stepenStudija;
    }

    public int getGodinaStudija() {
        return godinaStudija;
    }

    public void setGodinaStudija(int godinaStudija) {
        this.godinaStudija = godinaStudija;
    }

    public boolean isBudzet() {
        return budzet;
    }

    public void setBudzet(boolean budzet) {
        this.budzet = budzet;
    }

    public Smer getSmer() {
        return smer;
    }

    public void setSmer(Smer smer) {
        this.smer = smer;
    }

    public Modul getModul() {
        return modul;
    }

    public void setModul(Modul modul) {
        this.modul = modul;
    }

 @Override
    public int insert() throws SQLException {
        Connection con = DatabaseConnection.getInstance();
        try {
            String sql="INSERT INTO student(PKStudenta,ime,prezime,brojIndeksa,email,telefon,stepenStudija,godinaStudija,FKModula,budzet,FKSmera) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setLong(1, this.getId());
            st.setString(2, this.getIme());
            st.setString(3, this.getPrezime());  
            st.setString(4, this.getIndeks());
            st.setString(5, this.getEmail());
            st.setString(6, this.getTelefon());
            st.setInt(7, this.getStepenStudija());  
            st.setInt(8, this.getGodinaStudija());
            st.setLong(9, this.getModul().getId());
            st.setBoolean(10, this.isBudzet());
            st.setLong(11, this.getSmer().getId());
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
            String sql="UPDATE ugovor SET ime=?,prezime=?,brojIndeksa=?,email=?,telefon=?,stepenStudija=?,godinaStudija=?,FKModula=?,budzet=?,FKSmera=? WHERE PKStudenta=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, this.getIme());
            st.setString(2, this.getPrezime());  
            st.setString(3, this.getIndeks());
            st.setString(4, this.getEmail());
            st.setString(5, this.getTelefon());
            st.setInt(6, this.getStepenStudija());  
            st.setInt(7, this.getGodinaStudija());
            st.setLong(8, this.getModul().getId());
            st.setBoolean(9, this.isBudzet());
            st.setLong(10, this.getSmer().getId());
            st.setLong(11, this.getId());
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
            String sql="DELETE FROM student WHERE PKStudenta=?";
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
