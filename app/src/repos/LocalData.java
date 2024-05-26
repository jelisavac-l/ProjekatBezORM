package repos;

import domain.*;
import java.util.LinkedList;
import java.util.List;

/**
 * Drugi put sve ovo pisem jer nisam video da mi dve klase nisu
 * public...
 */

public class LocalData {
    public static List<Entity> delatnosti;
    public static List<Entity> kompanije;
    public static List<Entity> moduli;
    public static List<Praksa> prakse;
    public static List<Entity> smerovi;
    public static List<Entity> studenti;
    public static List<Entity> ugovori;
    
    
    /**
     * 
     * @param e Entitet koji ubacujemo u lokalni repozitorijum.
     * @return uspesnost operacije.
     */
    
    // Kastovati sve ili menjati pojedinacno
    public static boolean add(Entity e) {
        if(e instanceof APR) {
            if(delatnosti == null) delatnosti = new LinkedList<>();
            delatnosti.add(e);
            return true;
        } else if(e instanceof Kompanija) {
            if(kompanije == null) kompanije = new LinkedList<>();
            kompanije.add(e);
            return true;
        } else if(e instanceof Modul) {
            if(moduli == null) moduli = new LinkedList<>();
            moduli.add(e);
            return true;
        } else if(e instanceof Praksa) {
            if(prakse == null) prakse = new LinkedList<>();
            prakse.add((Praksa)e);
            return true;
        } else if(e instanceof Smer) {
            if(smerovi == null) smerovi = new LinkedList<>();
            smerovi.add(e);
            return true;
        } else if(e instanceof Student) {
            if(studenti == null) studenti = new LinkedList<>();
            studenti.add(e);
            return true;
        } else if(e instanceof Ugovor) {
            if(ugovori == null) ugovori = new LinkedList<>();
            ugovori.add(e);
            return true;
        }
        // Moze i exception ovde da se baci
        return false;
    }
}
