<%@ page language= "java" import="java.sql.*"pageEncoding = "gb2312"%>
<%!
public Connection getConnection( ) throws Exception{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
Connection conn = null;
conn=DriverManager.getConnection("jdbc:odbc:HZKZUSTts" );
return conn;
}
%>
