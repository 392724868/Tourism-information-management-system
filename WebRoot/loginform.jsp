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
  	<h1>☆★ Log In ★☆ </h1>
    <form name="loginform" action="loginaction.jsp" name="form1" method="post">
    	输入账号：<input name="account" type="text"><br><br>
    	输入密码：<input name="password" type="password"><br><br> 
        &nbsp;&nbsp;&nbsp;&nbsp;验证码:&nbsp;<input type="text" name="code" size="12"> 
        <img name="imgValidate" src="validate.jsp" onclick="refresh()"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;选择身份：<input name="radio" type="radio" value="游客">游客<input name="radio" type="radio" value="导游">导游
<input name="cname" type="radio" value="财务">财务<input name="radio" type="radio" value="管理员">管理员<br><br>
<input type="button"onclick="zhucheyemian()"value="注册">&nbsp;&nbsp;&nbsp; 
            <input type="submit" value="登录" >
       </div>
</form>
   </body>
</html>
