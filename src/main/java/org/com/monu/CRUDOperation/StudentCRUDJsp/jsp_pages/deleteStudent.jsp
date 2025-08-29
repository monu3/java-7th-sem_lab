<%@ page import="java.sql.*, org.com.monu.CRUDOperation.DBConnection" %>
<%
    String id = request.getParameter("id");
    try (Connection conn = DBConnection.getConnection()) {
        String sql = "DELETE FROM Student WHERE id=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, Integer.parseInt(id));
        ps.executeUpdate();
        response.sendRedirect("index.jsp");
    } catch(Exception e) {
        e.printStackTrace();
    }
%>
