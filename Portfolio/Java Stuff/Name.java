import java.util.Scanner;

public class Name {
  public static void main(String[] args) {
    int cYear, bYear, age;

    Scanner sc = new Scanner(System.in);
    System.out.println("Enter current year: ");
    cYear = sc.nextInt();
    System.out.println("Enter your birth year: ");
    bYear = sc.nextInt();
    age = cYear - bYear;
    System.out.println("You are " + age + " years old");

  }
}
