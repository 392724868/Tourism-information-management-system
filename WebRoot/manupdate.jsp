<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<html>
  <body> 
   <%
   		String Oid = request.getParameter("Oid");
   		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection conn = DriverManager.getConnection("jdbc:odbc:HZKZUSTts");
		String sql = 
"UPDATE T_Order SET zt='´ý±¨¼Û' WHERE Oid=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,Oid);
		ps.executeUpdate();
		ps.close();
		conn.close();
	%>
	<jsp:forward page="man.jsp"></jsp:forward>
  </body>
</html>
