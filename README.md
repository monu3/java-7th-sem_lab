# Student CRUD JSP Application

This is a simple CRUD (Create, Read, Update, Delete) application for managing student records using JSP, Servlets, and PostgreSQL.

## Prerequisites

- Java Development Kit (JDK) 21
- Maven
- PostgreSQL database
- (Optional) Apache Tomcat 9+ for standalone deployment

## Database Setup

Make sure you have a PostgreSQL database named `monujavadb` with the following table:

```sql
CREATE TABLE Student (
    id SERIAL PRIMARY KEY,
    roll_no VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    program VARCHAR(50)
);
```

## How to Run the JSP Application

There are two ways to run this application:

### Method 1: Using Maven with Embedded Tomcat

This is the easiest way to run the application during development:

1. Open a terminal/command prompt
2. Navigate to the project root directory
3. Run the following command:

```bash
mvn clean package tomcat7:run
```

4. Open your web browser and go to: http://localhost:8080/student-crud/

### Method 2: Deploying to a Standalone Tomcat Server

1. Build the WAR file:

```bash
mvn clean package
```

2. This will create a WAR file in the `target` directory named `Java_Lab_Monu-1.0-SNAPSHOT.war`

3. Copy this WAR file to your Tomcat's `webapps` directory

4. Start Tomcat if it's not already running

5. Access the application at: http://localhost:8080/Java_Lab_Monu-1.0-SNAPSHOT/

## Application Structure

- `index.jsp`: Displays all student records with options to add, edit, or delete
- `addStudent.jsp`: Form to add a new student
- `editStudent.jsp`: Form to edit an existing student
- `deleteStudent.jsp`: Handles student deletion

## Troubleshooting

- If you encounter database connection issues, check the database credentials in `DBConnection.java`
- Make sure PostgreSQL is running and accessible
- Check Tomcat logs for any errors during deployment