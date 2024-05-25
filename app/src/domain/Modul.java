package domain;

class Modul {
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
    
}
