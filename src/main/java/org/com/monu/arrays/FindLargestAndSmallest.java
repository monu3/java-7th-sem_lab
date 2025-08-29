package org.com.monu.arrays;

import java.util.Scanner;

/**
 * Created On : 2025 29 Aug 1:37 PM
 * Author : Monu Siddiki
 * Description :
 **/
public class FindLargestAndSmallest {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the size of the array: ");
        int size = scanner.nextInt();
        int[] arr = new int[size];
        System.out.println("Enter the elements of the array: ");
        for (int i = 0; i < size; i++) {
            arr[i] = scanner.nextInt();
        }
        int largest = arr[0];
        int smallest = arr[0];
        for (int i = 1; i < size; i++) {
            if (arr[i] > largest) {
                largest = arr[i];
            }
            if (arr[i] < smallest) {
                smallest = arr[i];
            }
        }
        System.out.println("Largest element is: " + largest);
        System.out.println("Smallest element is: " + smallest);
        scanner.close();

    }
}

