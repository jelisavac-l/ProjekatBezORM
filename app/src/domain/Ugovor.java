package domain;

import java.util.Date;

public class Ugovor {
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
    
}
