package domain;

public class Kompanija {
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
    
    
}
