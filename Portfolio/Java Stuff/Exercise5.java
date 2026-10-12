import java.util.Scanner;

public class Exercise5 {
  public static void main(String[] args) {
    String name_of_the_TA, name_of_the_student;
    Scanner sc = new Scanner(System.in);
    System.out.println("Enter the name of a TA: ");
    name_of_the_TA = sc.nextLine();
    System.out.println("Enter your name: ");
    name_of_the_student = sc.nextLine();
    System.out
        .println("Dear " + name_of_the_TA + " I enjoy your tutorials, they are awesome! - " + name_of_the_student);

  }
}
