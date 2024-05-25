package domain;

public class APR {
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
    
}
