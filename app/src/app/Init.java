package app;

import com.formdev.flatlaf.FlatDarkLaf;
import com.formdev.flatlaf.FlatLightLaf;
import com.formdev.flatlaf.themes.FlatMacDarkLaf;
import com.formdev.flatlaf.themes.FlatMacLightLaf;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import util.AbelException;

public class Init {
    
    public static void start() throws FileNotFoundException, AbelException
    {
        File theme = new File("thm.txt");
        Scanner sc = new Scanner(theme);
        int themeNumber = 1;
        if(sc.hasNext()) themeNumber = sc.nextInt();
        else throw new AbelException();
        sc.close();
        switch(themeNumber){
            case 0: FlatLightLaf.setup(); break;
            case 1: FlatDarkLaf.setup(); break;
            case 2: FlatMacLightLaf.setup(); break;
            case 3: FlatMacDarkLaf.setup(); break;
            default: return;
        }
        
    }
}
