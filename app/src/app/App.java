package app;

import com.formdev.flatlaf.FlatLightLaf;
import designs.Main1;

/**
 * 
 * @author Jelisavac, L.
 * @author Mijailovic, M.
 * 
 */

public class App {
    
    // Ne diraj
    public static void jezdimirovoTestiranjeGUIa()
    {
        FlatLightLaf.setup();
        Main1 centrirana = new Main1();
        centrirana.setLocationRelativeTo(null);
        centrirana.setVisible(true);
    }

    public static void main(String[] args) {
        jezdimirovoTestiranjeGUIa();
    }
    
}
