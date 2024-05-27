package app;

import java.sql.*;
import broker.DatabaseConnection;
import com.formdev.flatlaf.FlatLightLaf;
import designs.Display;
import domain.APR;
import domain.Entity;
import domain.Kompanija;
import domain.Ugovor;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import repos.LocalData;


/**
 * 
 * @author Jelisavac, L.
 * @author Mijailovic, M.
 * @since 2024.
 * @see github.com/jelisavac-l/ProjekatBezORM
 * 
 */

public class App {
    
    // Ne diraj
    public static void jezdimirovoTestiranjeGUIa()
    {
        FlatLightLaf.setup();
        Display centrirana = new Display();
        centrirana.setLocationRelativeTo(null);
        centrirana.setVisible(true);
    }

    public static void main(String[] args) throws SQLException {

//        jezdimirovoTestiranjeGUIa();
//        APR apr1 = new APR(996l, "probaAPR", 628);
//
////        apr1.update(apr1);
//
//        Kompanija k1 = new Kompanija(6l, "probaKizmena", 124l, apr1);
////        k1.insert();
//        k1.update(k1);
//        Date d1 = Date.valueOf(LocalDate.of(2017, 1, 10));
//        Date d2 = Date.valueOf(LocalDate.of(2018, 1, 10));
//        System.out.println(d1);
//        Ugovor u1 = new Ugovor(123l,d1,d2,"ugovor1");
//        u1.insert();
        
    }
    
}
