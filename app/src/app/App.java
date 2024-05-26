package app;

import java.sql.*;
import broker.DatabaseConnection;
import com.formdev.flatlaf.FlatLightLaf;
import designs.Display;


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

        jezdimirovoTestiranjeGUIa();
            
    }
    
}
