package domain;

import java.sql.SQLException;
import java.util.List;

public class Kompanija implements Entity{
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

    @Override
    public int insert(Entity e) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(Entity oldEnt, Entity newEnt) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(Entity e) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Entity> select() throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
}
