package domain;

import java.util.Date;

public class Praksa {
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
    
    
    
}
