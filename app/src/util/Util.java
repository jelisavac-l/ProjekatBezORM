/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import domain.Kompanija;
import domain.Praksa;
import domain.Student;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import repos.LocalData;

/**
 *
 * @author ASTVRIAS
 */
public class Util {
    
    public static void exportCSV(File file){
        try {
            FileWriter writer = new FileWriter(file);
            for(int i=0;i<LocalData.studenti.size();i++){
                String ime = ((Student)LocalData.studenti.get(i)).getIme();
                String prezime = ((Student)LocalData.studenti.get(i)).getPrezime();
                String indeks = ((Student)LocalData.studenti.get(i)).getIndeks();
                String email = ((Student)LocalData.studenti.get(i)).getEmail();
                String broj = ((Student)LocalData.studenti.get(i)).getTelefon();
                int stepenStudija = ((Student)LocalData.studenti.get(i)).getStepenStudija();
                int godinaStudija = ((Student)LocalData.studenti.get(i)).getGodinaStudija();
                String nacinFinansiranja;
                if(((Student)LocalData.studenti.get(i)).isBudzet()){
                    nacinFinansiranja = "budzet";
                }
                else{
                    nacinFinansiranja = "samofinansiranje";
                }
                String smer = ((Student)LocalData.studenti.get(i)).getSmer().getNaziv();
                String modul = ((Student)LocalData.studenti.get(i)).getModul().getNaziv();
                String kompanije = ((Kompanija)LocalData.kompanije.get(i)).getNaziv();
                String pib = ((Kompanija)LocalData.kompanije.get(i)).getPIB().toString();
                String delatnost = ((Kompanija)LocalData.kompanije.get(i)).getDelatnost().getNazivDelatnosti();
                writer.append(ime+","+prezime+","+indeks+","+email+","+broj+","+stepenStudija+","+godinaStudija
                +","+nacinFinansiranja+","+smer+","+modul+","+kompanije+","+pib+","+delatnost+"\n");
            }
            writer.close();
        } catch (IOException ex) {
            System.out.println("Ne kreira fajl");
        }
        catch(NullPointerException e){
            System.out.println("Lista prazna!");
        }
    }
}
