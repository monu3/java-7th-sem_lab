<%@ page import="java.sql.*, org.com.monu.CRUDOperation.DBConnection" %>
<html>
<head><title>Add Student</title></head>
<body>
<h2>Add New Student</h2>
<form method="post">
    Roll No: <input type="text" name="roll_no" required><br><br>
    Name: <input type="text" name="name" required><br><br>
    Email: <input type="email" name="email" required><br><br>
    Program: <input type="text" name="program" required><br><br>
    <input type="submit" value="Add Student">
</form>

<%
    if(request.getMethod().equalsIgnoreCase("POST")) {
        String rollNo = request.getParameter("roll_no");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String program = request.getParameter("program");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO Student(roll_no, name, email, program) VALUES(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, rollNo);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, program);
            int i = ps.executeUpdate();
            if(i > 0){
                response.sendRedirect("index.jsp");
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
