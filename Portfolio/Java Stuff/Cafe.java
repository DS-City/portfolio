import java.util.Scanner;
import java.lang.Math;

public class Cafe {
  static double total;

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    try {
      System.out.println("Enter order price: ");

      double price = sc.nextDouble();
      if (price >= 10) {
        total = price * 0.8;

      }
      double roundOff = Math.round(total * 100.0) / 100.0;
      System.out.println("Price is: " + roundOff);
    } finally {
      if (sc != null)
        sc.close();
    }
  }

}
