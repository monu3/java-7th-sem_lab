package org.com.monu.OOP;

/**
 * Created On : 2025 29 Aug 2:49 PM
 * Author : Monu Siddiki
 * Description :
 **/
public class PayrollSystem {
    public static void main(String[] args) {

        // Create objects of subclasses
        FullTimeEmployee emp1 = new FullTimeEmployee(101, "Diwash", 50000);
        PartTimeEmployee emp2 = new PartTimeEmployee(102, "Monu", 40, 1000);

        // Calculate salaries (Polymorphism in action)
        emp1.calculateSalary();
        emp2.calculateSalary();

        // Display employee details
        emp1.displayEmployeeDetails();
        emp2.displayEmployeeDetails();
    }
}
