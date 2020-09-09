<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<%@page import="javax.swing.JOptionPane"%>
<html>
	<body>
		<%
			request.setCharacterEncoding("gb2312");
			String account = request.getParameter("account");
			String password = request.getParameter("password");
			String cname = request.getParameter("cname");
    		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn = DriverManager.getConnection("jdbc:odbc:HZKZUSTts");
			String sql = "INSERT INTO CUSTOMER(ACCOUNT,PASSWORD,CNAME) VALUES(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,account);
			ps.setString(2,password);
			ps.setString(3,cname);
			int i = ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"×¢²á³É¹¦!ÇëµÇÂ¼ÄúµÄÕËºÅ");
			ps.close();
			conn.close();		
    %>
     <jsp:forward page="registerform.jsp"></jsp:forward>
	</body>
</html>