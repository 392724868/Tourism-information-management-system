<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html> 
  <body>
    <script type="text/javascript">
		function refresh(){
			loginform.imgValidate.src = "validate.jsp?id=" + Math.random();
		}
	</script>
<script type="text/javascript">
function zhucheyemian(){
location.href="registerform.jsp";
}
</script>
  	<%
    	ArrayList customers = (ArrayList)application.getAttribute("customers");    	    	
    	if(customers==null)	{
    		customers = new ArrayList();
    		application.setAttribute("customers",customers);
    	}
  	%>
<br><br><br><br><br><br><br>
<div align="center" >
  	<h1>��� Log In ��� </h1>
    <form name="loginform" action="loginaction.jsp" name="form1" method="post">
    	�����˺ţ�<input name="account" type="text"><br><br>
    	�������룺<input name="password" type="password"><br><br> 
        &nbsp;&nbsp;&nbsp;&nbsp;��֤��:&nbsp;<input type="text" name="code" size="12"> 
        <img name="imgValidate" src="validate.jsp" onclick="refresh()"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ѡ����ݣ�<input name="radio" type="radio" value="�ο�">�ο�<input name="radio" type="radio" value="����">����
<input name="cname" type="radio" value="����">����<input name="radio" type="radio" value="����Ա">����Ա<br><br>
<input type="button"onclick="zhucheyemian()"value="ע��">&nbsp;&nbsp;&nbsp; 
            <input type="submit" value="��¼" >
       </div>
</form>
   </body>
</html>
