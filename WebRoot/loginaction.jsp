<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="dao.customerdao"%>				
<%@page import="vo.customer"%>
<html> 
  <body>
    <%
    	request.setCharacterEncoding("gb2312");
            	String account = request.getParameter("account");
            	String password = request.getParameter("password");
            	String radio = request.getParameter("cname");
            	String code =request.getParameter("code");
            	String randStr =(String)session.getAttribute("randStr");
            	
            	customerdao cdao = new customerdao();
            	customer customer = cdao.getCustomerByAccount(account);
        		
        		
        		
        		if(customer==null || !customer.getPassword().equals(password)|| ! code.equals(randStr)){
    %>
	     <script type="text/javascript">
         window.alert("�˺��������֤�����");	
         result= history.back();   		
        </script> 
	<%			
		}
	else{
        if(customer.getCname().equals("�ο�")){
        response.sendRedirect("user.jsp");
        }
        if(customer.getCname().equals("����")){
        response.sendRedirect("guide.jsp");
        }
        if(customer.getCname().equals("����")){
        response.sendRedirect("caiwu.jsp");
        }
        if(customer.getCname().equals("����Ա")){
        response.sendRedirect("man.jsp");
        } 
        }
  %>
  </body>
</html>
