package org.com.monu.OOP;

/**
 * Created On : 2025 29 Aug 2:41 PM
 * Author : Monu Siddiki
 * Description :
 **/
public class FullTimeEmployee extends Employee{

    private double monthlySalary;
    public FullTimeEmployee(int id, String name, double monthlySalary) {
        super(id, name);
        this.monthlySalary = monthlySalary;
    }

    @Override
    public void calculateSalary() {
        salary = monthlySalary; // full-time salary = monthly fixed salary
    }
}
