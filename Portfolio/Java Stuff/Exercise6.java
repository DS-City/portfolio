import java.util.Scanner;

public class Exercise6 {
  public static void main(String[] args) {
    int num1, num2, num3;
    Scanner sc = new Scanner(System.in);
    System.out.println("Enter 3 numbers: ");
    num1 = sc.nextInt();
    num2 = sc.nextInt();
    num3 = sc.nextInt();
    if (num1 < num2 && num2 < num3) {
      System.out.println(true);
    } else {
      System.out.println(false);
    }

  }
}
