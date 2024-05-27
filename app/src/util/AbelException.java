package util;

public class AbelException extends RuntimeException {

    public AbelException() {
    }

    public AbelException(String msg) {
        super(msg);
        System.err.println("Ovaj Exception nalgasava da je Jezdimir negde glup ispao.");
    }
}
