<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<%@page import = "dao.CaiwuDao"%>
<html>
 <body>
 <%
 	request.setCharacterEncoding("gb2312");
  	 String zt = request.getParameter("zt");
     String[] Oid = request.getParameterValues("Oid");
     String[] Sid = request.getParameterValues("Sid");
     String[] Price = request.getParameterValues("Price");
     CaiwuDao caiwudao = new CaiwuDao();
     caiwudao.updatePrices(zt,Oid,Sid,Price);
 %>
  <jsp:forward page="caiwu.jsp"></jsp:forward>
  </body>
  </html>