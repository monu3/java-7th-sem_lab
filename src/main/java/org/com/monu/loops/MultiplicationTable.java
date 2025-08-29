package org.com.monu.loops;

import java.util.Scanner;

/**
 * Created On : 2025 29 Aug 1:32 PM
 * Author : Monu Siddiki
 * Description :
 **/
public class MultiplicationTable {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = scanner.nextInt();

        for (int i = 1; i <= 10; i++) {
            System.out.println(num + " * " + i + " = " + num * i);
        }
        scanner.close();
    }
}
