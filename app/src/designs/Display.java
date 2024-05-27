/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package designs;

import java.sql.*;
import broker.DatabaseConnection;
import domain.APR;
import domain.Entity;
import domain.Kompanija;
import domain.Modul;
import domain.Praksa;
import domain.Smer;
import domain.Student;
import domain.Ugovor;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import repos.LocalData;

/**
 *
 * @author ASTVRIAS
 */
public class Display extends javax.swing.JFrame {

    /**
     * Creates new form Main1
     */
    public Display() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        tblSvasta = new javax.swing.JTable();
        pnlInfo = new javax.swing.JPanel();
        tfIme = new javax.swing.JTextField();
        tfPrezime = new javax.swing.JTextField();
        tfNdx = new javax.swing.JTextField();
        tfEmail = new javax.swing.JTextField();
        tfTelefon = new javax.swing.JTextField();
        tfGodinaStudija = new javax.swing.JTextField();
        tfPIB = new javax.swing.JTextField();
        tfDelatnost = new javax.swing.JTextField();
        tfStepenStudija = new javax.swing.JTextField();
        tfBudzet = new javax.swing.JTextField();
        tfNazivKompanije = new javax.swing.JTextField();
        jSeparator2 = new javax.swing.JSeparator();
        tfDatumOd = new javax.swing.JTextField();
        tfDatumDo = new javax.swing.JTextField();
        taKomentar = new javax.swing.JTextField();
        jSeparator3 = new javax.swing.JSeparator();
        tfSmer = new javax.swing.JTextField();
        tfModul = new javax.swing.JTextField();
        jButton5 = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        btnLoad = new javax.swing.JButton();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        miImport = new javax.swing.JMenuItem();
        miExport = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();
        jMenu3 = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Prakse");
        setPreferredSize(new java.awt.Dimension(1280, 720));
        setResizable(false);

        tblSvasta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Ime", "Prezime", "Br. indeksa", "Modul", "Godina", "Praksa", "Delatnost", "Datum od", "Datum do"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(tblSvasta);

        pnlInfo.setBorder(javax.swing.BorderFactory.createTitledBorder("Informacije o Studentu i Kompaniji"));

        tfIme.setEditable(false);
        tfIme.setText("Ime studenta");
        tfIme.setFocusable(false);
        tfIme.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfImeActionPerformed(evt);
            }
        });

        tfPrezime.setEditable(false);
        tfPrezime.setText("Prezime studenta");
        tfPrezime.setFocusable(false);

        tfNdx.setEditable(false);
        tfNdx.setText("Indeks");
        tfNdx.setFocusable(false);

        tfEmail.setEditable(false);
        tfEmail.setText("E-mail adresa");
        tfEmail.setFocusable(false);

        tfTelefon.setEditable(false);
        tfTelefon.setText("Broj telefona");
        tfTelefon.setFocusable(false);

        tfGodinaStudija.setEditable(false);
        tfGodinaStudija.setText("Godina studija");
        tfGodinaStudija.setFocusable(false);

        tfPIB.setEditable(false);
        tfPIB.setText("PIB");
        tfPIB.setFocusable(false);

        tfDelatnost.setEditable(false);
        tfDelatnost.setText("Primarna delatnost");
        tfDelatnost.setFocusable(false);

        tfStepenStudija.setEditable(false);
        tfStepenStudija.setText("Stepen");
        tfStepenStudija.setFocusable(false);

        tfBudzet.setEditable(false);
        tfBudzet.setText("Način finansiranja");
        tfBudzet.setFocusable(false);

        tfNazivKompanije.setEditable(false);
        tfNazivKompanije.setText("Naziv kompanije");
        tfNazivKompanije.setFocusable(false);

        jSeparator2.setOrientation(javax.swing.SwingConstants.VERTICAL);

        tfDatumOd.setEditable(false);
        tfDatumOd.setText("Od");
        tfDatumOd.setFocusable(false);
        tfDatumOd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfDatumOdActionPerformed(evt);
            }
        });

        tfDatumDo.setEditable(false);
        tfDatumDo.setText("Do");
        tfDatumDo.setFocusable(false);
        tfDatumDo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfDatumDoActionPerformed(evt);
            }
        });

        taKomentar.setEditable(false);
        taKomentar.setText("Detalji");
        taKomentar.setFocusable(false);
        taKomentar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                taKomentarActionPerformed(evt);
            }
        });

        jSeparator3.setOrientation(javax.swing.SwingConstants.VERTICAL);

        tfSmer.setEditable(false);
        tfSmer.setText("Smer");
        tfSmer.setFocusable(false);
        tfSmer.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfSmerActionPerformed(evt);
            }
        });

        tfModul.setEditable(false);
        tfModul.setText("Modul");
        tfModul.setFocusable(false);

        jButton5.setText("Otvori ugovor");

        javax.swing.GroupLayout pnlInfoLayout = new javax.swing.GroupLayout(pnlInfo);
        pnlInfo.setLayout(pnlInfoLayout);
        pnlInfoLayout.setHorizontalGroup(
            pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlInfoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(tfNdx, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(tfIme, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(pnlInfoLayout.createSequentialGroup()
                            .addComponent(tfStepenStudija, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(tfGodinaStudija, javax.swing.GroupLayout.DEFAULT_SIZE, 224, Short.MAX_VALUE))
                        .addComponent(tfTelefon)
                        .addComponent(tfEmail)
                        .addComponent(tfPrezime)
                        .addComponent(tfBudzet))
                    .addGroup(pnlInfoLayout.createSequentialGroup()
                        .addComponent(tfSmer, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(tfModul, javax.swing.GroupLayout.DEFAULT_SIZE, 224, Short.MAX_VALUE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jSeparator3, javax.swing.GroupLayout.PREFERRED_SIZE, 9, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(tfPIB, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(tfNazivKompanije)
                    .addComponent(tfDelatnost, javax.swing.GroupLayout.DEFAULT_SIZE, 302, Short.MAX_VALUE)
                    .addComponent(jButton5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 3, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(taKomentar, javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnlInfoLayout.createSequentialGroup()
                        .addComponent(tfDatumOd, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(tfDatumDo, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(16, 16, 16))
        );
        pnlInfoLayout.setVerticalGroup(
            pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlInfoLayout.createSequentialGroup()
                .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jSeparator2)
                    .addComponent(jSeparator3, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(pnlInfoLayout.createSequentialGroup()
                        .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(pnlInfoLayout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(tfIme, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(tfPrezime, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(tfNdx, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(tfEmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(tfTelefon, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(tfGodinaStudija, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(tfStepenStudija, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(pnlInfoLayout.createSequentialGroup()
                                .addComponent(tfNazivKompanije, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(tfPIB, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(tfDelatnost, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButton5)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(tfBudzet, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(tfModul, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(tfSmer, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(pnlInfoLayout.createSequentialGroup()
                        .addGroup(pnlInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(tfDatumDo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(tfDatumOd, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(taKomentar)))
                .addContainerGap())
        );

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Kontrole"));

        btnLoad.setText("LOAD (EXPERIMENTAL)");
        btnLoad.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoadActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnLoad, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnLoad, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jMenu1.setText("File");

        miImport.setText("Import...");
        jMenu1.add(miImport);

        miExport.setText("Export...");
        jMenu1.add(miExport);

        jMenuBar1.add(jMenu1);

        jMenu2.setText("Edit");
        jMenuBar1.add(jMenu2);

        jMenu3.setText("Settings");
        jMenu3.addMenuListener(new javax.swing.event.MenuListener() {
            public void menuCanceled(javax.swing.event.MenuEvent evt) {
            }
            public void menuDeselected(javax.swing.event.MenuEvent evt) {
            }
            public void menuSelected(javax.swing.event.MenuEvent evt) {
                jMenu3MenuSelected(evt);
            }
        });
        jMenuBar1.add(jMenu3);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 1268, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(pnlInfo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(pnlInfo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 397, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tfImeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfImeActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfImeActionPerformed

    private void tfDatumOdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfDatumOdActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfDatumOdActionPerformed

    private void tfDatumDoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfDatumDoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfDatumDoActionPerformed

    private void taKomentarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_taKomentarActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_taKomentarActionPerformed

    private void tfSmerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfSmerActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfSmerActionPerformed

    private void btnLoadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoadActionPerformed
        try {
            getSvastaFromDB(); 
        } catch (SQLException ex) {
            Logger.getLogger(Display.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        TableModel tm = tblSvasta.getModel();
        DefaultTableModel dtm = (DefaultTableModel) tm;
        dtm.setRowCount(0);
        for(Praksa p : LocalData.prakse)
        {
            
            // Koliko je opustajuce pisati ovo nakon sve fizikalije...
            Object[] row = new Object[]{
                p.getStudent().getIme(),
                p.getStudent().getPrezime(),
                p.getStudent().getIndeks(),
                p.getStudent().getModul().getNaziv(),
                p.getStudent().getGodinaStudija(),
                p.getKompanija().getNaziv(),
                p.getKompanija().getDelatnost().getNazivDelatnosti(),
                p.getDatumPocetka(),
                p.getDatumZavrsetka()
            };
            
            dtm.addRow(row);
        }
        
        
        
        
    }//GEN-LAST:event_btnLoadActionPerformed

    private void jMenu3MenuSelected(javax.swing.event.MenuEvent evt) {//GEN-FIRST:event_jMenu3MenuSelected
        SettingsDialog sd = new SettingsDialog();
        sd.setLocationRelativeTo(null);
        sd.setVisible(true);
        sd.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }//GEN-LAST:event_jMenu3MenuSelected

    /**
     * Patnja velika je bila smisliti ovo a jos veca napisati.
     * @throws SQLException 
     */
    private void getSvastaFromDB() throws SQLException {
        APR ap;
        Kompanija ko;
        Smer sm;
        Modul md;
        Student su;
        Praksa pr;
        
        LocalData.flush();  // Da ne ponavlja badava
        
        String sql = "SELECT\n" +
                "s.PKStudenta,\n" +
                "s.ime,\n" +
                "s.prezime,\n" +
                "s.brojIndeksa,\n" +
                "s.email,\n" +
                "s.telefon, \n" +
                "s.stepenStudija,\n" +
                "s.godinaStudija,\n" +
                "s.budzet,\n" +
                "sm.PKSmera,\n" +
                "sm.Naziv as 'nazivSmera',\n" +
                "m.PKModula,\n" +
                "m.naziv as 'nazivModula',\n" +
                "k.PKKompanije,\n" +
                "k.naziv as 'nazivKompanije',\n" +
                "k.PIB,\n" +
                "a.PKDelatnosti,\n" +
                "a.sifraDelatnosti,\n" +
                "a.naziv as 'nazivDelatnosti',\n" +
                "p.PKPrakse,\n" +
                "p.komentar,\n" +
                "p.datumPocetka, \n" +
                "p.datumZavrsetka\n" +
                "FROM Praksa p\n" +
                "JOIN Kompanija k ON p.FKKompanije = k.PKKompanije\n" +
                "JOIN Student s ON p.FKStudenta = s.PKStudenta \n" +
                "JOIN Smer sm ON s.FKSmera = sm.PKSmera \n" +
                "JOIN Modul m  ON s.FKModula = m.PKModula\n" +
                "JOIN APR a ON k.FKDelatnosti = a.PKDelatnosti ";
        Connection con = DatabaseConnection.getInstance();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        while(rs.next())
        {
            ap = new APR(rs.getLong("PKDelatnosti"),
                    rs.getString("nazivDelatnosti"),
                    rs.getInt("sifraDelatnosti"));
            
            ko = new Kompanija(rs.getLong("PKKompanije"),
                    rs.getString("nazivKompanije"),
                    rs.getLong("PIB"),
                    ap);
            
            sm = new Smer(rs.getLong("PKSmera"),
                    rs.getString("nazivSmera"));
            
            md = new Modul(rs.getLong("PKModula"),
                    rs.getString("nazivModula"),
                    sm);
            
            su = new Student(rs.getLong("PKStudenta"),
                    rs.getString("ime"),
                    rs.getString("prezime"),
                    rs.getString("brojIndeksa"),
                    rs.getString("email"),
                    rs.getString("telefon"),
                    rs.getInt("stepenStudija"),
                    rs.getInt("godinaStudija"),
                    rs.getBoolean("budzet"),
                    sm,
                    md);
            
            pr = new Praksa(rs.getLong("PKPrakse"),
                    ko,
                    su,
                    rs.getDate("datumPocetka"),
                    rs.getDate("datumZavrsetka"),
                    rs.getString("komentar"));
            
            LocalData.add(ap);
            LocalData.add(ko);
            LocalData.add(sm);
            LocalData.add(md);
            LocalData.add(su);
            LocalData.add(pr);
        }
        rs.close();
        st.close();
        con.close();
    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnLoad;
    private javax.swing.JButton jButton5;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JMenuItem miExport;
    private javax.swing.JMenuItem miImport;
    private javax.swing.JPanel pnlInfo;
    private javax.swing.JTextField taKomentar;
    private javax.swing.JTable tblSvasta;
    private javax.swing.JTextField tfBudzet;
    private javax.swing.JTextField tfDatumDo;
    private javax.swing.JTextField tfDatumOd;
    private javax.swing.JTextField tfDelatnost;
    private javax.swing.JTextField tfEmail;
    private javax.swing.JTextField tfGodinaStudija;
    private javax.swing.JTextField tfIme;
    private javax.swing.JTextField tfModul;
    private javax.swing.JTextField tfNazivKompanije;
    private javax.swing.JTextField tfNdx;
    private javax.swing.JTextField tfPIB;
    private javax.swing.JTextField tfPrezime;
    private javax.swing.JTextField tfSmer;
    private javax.swing.JTextField tfStepenStudija;
    private javax.swing.JTextField tfTelefon;
    // End of variables declaration//GEN-END:variables
}
