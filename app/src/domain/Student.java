package domain;

public class Student {
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
    
}
