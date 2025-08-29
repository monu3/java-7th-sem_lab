package org.com.monu.OOP;

/**
 * Created On : 2025 29 Aug 2:47 PM
 * Author : Monu Siddiki
 * Description :
 **/
public class PartTimeEmployee extends Employee{

    private int hoursWorked;
    private double hourlyRate;

    public PartTimeEmployee(int id, String name, int hoursWorked, double hourlyRate) {
        super(id, name);
        this.hoursWorked = hoursWorked;
        this.hourlyRate = hourlyRate;
    }

    @Override
    public void calculateSalary() {
        salary = hoursWorked * hourlyRate; // part-time salary = hours * rate
    }
}
