package org.com.monu.conditionalStatements;

import java.util.Scanner;

/**
 * Created On : 2025 28 Aug 8:06 PM
 * Author : Monu Siddiki
 * Description :
 **/
public class CheckEvenOdd {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = scanner.nextInt();

        if (num % 2 == 0) {
            System.out.println(num+" is even");
        } else {
            System.out.println(num+" is odd");
        }
        scanner.close();
    }
}
