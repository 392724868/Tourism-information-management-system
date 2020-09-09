<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<html>
  <body> 
   <%
   		String zt = request.getParameter("zt");
   		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection conn = DriverManager.getConnection("jdbc:odbc:HZKZUSTts");
		String sql = 
"UPDATE T_Order SET zt='´ý¸¶¿î' WHERE zt=? AND Price is not null";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,zt);
		ps.executeUpdate();
		ps.close();
		conn.close();
	%>
	<jsp:forward page="caiwu.jsp"></jsp:forward>
  </body>
</html>
