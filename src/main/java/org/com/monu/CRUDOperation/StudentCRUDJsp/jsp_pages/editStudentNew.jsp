<%@ page import="java.sql.*, org.com.monu.CRUDOperation.DBConnection" %>
<html>
<head><title>Edit Student</title></head>
<body>
<h2>Edit Student</h2>

<%
    // Get the student ID from the request
    String id = request.getParameter("id");
    String rollNo="", name="", email="", program="";

    // If this is a POST request, update the student
    if("POST".equalsIgnoreCase(request.getMethod())) {
        // Get form data
        id = request.getParameter("id");
        rollNo = request.getParameter("roll_no");
        name = request.getParameter("name");
        email = request.getParameter("email");
        program = request.getParameter("program");

        // Update the student in the database
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE Student SET roll_no=?, name=?, email=?, program=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, rollNo);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, program);
            ps.setInt(5, Integer.parseInt(id));
            ps.executeUpdate();
            response.sendRedirect("index.jsp");
        } catch(Exception e) { 
            // Log the error
            e.printStackTrace(); 
        }
    } 
    // If this is a GET request, fetch the student data
    else {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM Student WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(id));
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                rollNo = rs.getString("roll_no");
                name = rs.getString("name");
                email = rs.getString("email");
                program = rs.getString("program");
            } else {
                // Student not found, will show empty form
            }
        } catch(Exception e) { 
            // Log the error
            e.printStackTrace(); 
        }
    }
%>

<form method="post" action="editStudentNew.jsp">
    <input type="hidden" name="id" value="<%=id%>">
    Roll No: <input type="text" name="roll_no" value="<%=rollNo%>" required><br><br>
    Name: <input type="text" name="name" value="<%=name%>" required><br><br>
    Email: <input type="email" name="email" value="<%=email%>" required><br><br>
    Program: <input type="text" name="program" value="<%=program%>" required><br><br>
    <input type="submit" value="Update Student">
</form>
</body>
</html>
