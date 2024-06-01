package util;

import javax.swing.JOptionPane;

public class PopUpException extends RuntimeException {

    public PopUpException() {
        JOptionPane.showMessageDialog(null,
                "Došlo je do nepoznate greške.",
                "Greška",
                JOptionPane.ERROR_MESSAGE);

    }

    public PopUpException(String msg) {
        super(msg);
        JOptionPane.showMessageDialog(null,
                msg,
                "Greška",
                JOptionPane.ERROR_MESSAGE);
    }
}
