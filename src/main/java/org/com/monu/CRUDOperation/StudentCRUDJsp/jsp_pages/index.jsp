<%@ page import="java.sql.*, org.com.monu.CRUDOperation.DBConnection" %>

<html>
<head>
    <title>Student Management</title>
</head>
<body>
<h2>Student Records</h2>
<a href="addStudent.jsp">Add New Student</a>
<table border="1" width="70%">
    <tr>
        <th>ID</th>
        <th>Roll No</th>
        <th>Name</th>
        <th>Email</th>
        <th>Program</th>
        <th>Actions</th>
    </tr>
    <%
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM Student";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("roll_no") %></td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("program") %></td>
        <td>
            <a href="editStudentNew.jsp?id=<%= rs.getInt("id") %>">Edit</a> |
            <a href="deleteStudent.jsp?id=<%= rs.getInt("id") %>" onclick="return confirm('Are you sure?')">Delete</a>
        </td>
    </tr>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>
</body>
</html>
