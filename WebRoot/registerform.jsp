<%@ page language="java" pageEncoding="gb2312"%>
<html>
	<body>
	<script type="text/javascript">
			function huidenglu(){
			window.location.href="loginform.jsp";
			}
            </script>
<script type="text/javascript">			
			function jianyanshuju(){
				account = document.registerform.account.value;
				password = document.registerform.password.value;
				if(account==""){
					alert("�˺Ų���Ϊ��");
					document.registerform.account.focus();
					return;
				}
				else if(password==""){
					alert("���벻��Ϊ��");		
					document.registerform.password.focus();	
					return;	
				}	
				else if(password!="" ||account!=""){
					alert("��ϵͳ���飬���˺��������ע��!");		
					return;	
				}	
				document.registerform.submit();					
			}
		</script>

<br><br><br><br><br><br><br>
<div align="center" >
  	<h1>���Sign Up��� </h1>
		<form name="registerform" action="registersinsert.jsp" method="post">
			�����������˺�:<input type="text" name="account"><BR><BR>
			��������������:<input type="text" name="password"><BR><BR>
			��ѡ���������:
			<select name="cname">
				<option value="�ο�">�ο�</option>
				<option value="����">����</option>
                <option value="����">����</option>
				<option value="����Ա">����Ա</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR><BR>
            <input type="button" onclick="jianyanshuju()" value="�����˺�����">
            <input type="submit" value="�ύ">
            <input type="button"onclick="huidenglu()"value="���ص�¼����">
		</form>
</div>
	</body>
</html>
