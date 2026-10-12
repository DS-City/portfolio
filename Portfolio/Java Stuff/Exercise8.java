import java.util.Scanner;

public class Exercise8 {
  public static void main(String[] args) {
    String word;
    boolean palindrome = true;
    Scanner sc = new Scanner(System.in);
    System.out.println("Enter a word to check if it is a palindrome: ");
    word = sc.nextLine();
    for (int i = 0; word.charAt(i) != word.charAt((word.length() - 1) - i);) {
      palindrome = false;
      break;
    }
    if (palindrome) {
      System.out.println(word + " is a palindrome.");
    } else {
      System.out.println(word + " is not a palindrome.");
    }
  }

}
// jbox2d