<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@include file="db.inc"%>
<!DOCTYPE HTML>
<html>
<head>
<title>������������</title>
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
		</script>
	</head>
<body>
<div class="header">
	<div class="header-top">
	   <div class="wrap">
			<div class="logo">
				<a href="index.html"><img src="./images/logo.png" title="logo" ></a>
			</div>
			<div class="top-nav">
				<ul>
					<li class="active"><a href="#home" class="scroll">��ҳ</a></li>
					
					<li><a href="#portfolio" class="scroll">�������</a></li>
					
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="header-bottom" id="home">
		<div class="wrap">
			<div class="banner" align="center">
				<img src="./images/banner1.jpg"  alt=""  />
	        </div>
	    </div>
    </div>
</div>
<div class="main">
 	<div class="wrap">
 		<div class="content">
 			<div class="contentbox">
 				<div class="featured-box">
                      <h1>Welcome to personal space!</h1>
                       <div class="con" id="portfolio"> </div>
                      <p align="left">��ӭ���������������ģ������������Բ�ѯ���ŶӶ�����Ϣ�������䶩��״̬��������޸ģ�ͬʱΪ�����Ŷӷ�����Ӧ�ĺ��ʵ��Σ��Է����ŶӸ��ó��С������������ҳ��ʱ�������⣬��ӭ����ʱ��ϵ���ǵĿͷ����߲��������ϵ�绰010-88882773��ף��һ��˳����</p>
					<p align="left"> Welcome to the order management center, where you can query the team's order information, review and modify its order status, and assign appropriate guides to each team to facilitate the team's better travel. If you encounter any problem while browsing this page, you are welcome to contact our customer service or call our service contact number 010-88882773 at any time. I wish you all the best!</p>
                      <div class="clear"></div>
                </div>
           </div>
           <div class="hr_invisible xlarge"></div>
 				<div class="strip-box">
 						<h2 class="strip">
                              <span class="strip-inner">�������</span></span>
                        </h2>
                </div>
 		<div class="content-top" align= "center">
        <table align= "center"> 
 <table align= "center">
<tr bgcolor = "#5052A4">
<td width="100px"><font color="white">������� </font></td>
<td width="80px"><font color="white">�οͱ��</font></td>
<td width="50px"><font color="white">����</font></td>
<td width="120px"><font color="white">�Ƶ�</font></td>
<td width="80px"><font color="white">��������</font></td>
<td width="50px"><font color="white">����</font></td>
<td width="100px"><font color="white">����</font></td>
<td width="100px"><font color="white">״̬</font></td>
<td width="80px"><font color="white">����</td>
<td width="80px"><font color="white">ȷ��</td>
</tr>
<%
Connection conn = getConnection();
Statement stat = conn.createStatement();
String sql =
"SELECT Oid,Sid,View,Hotel,Special,Onumber,Date,zt FROM T_Order" ;
ResultSet rs=stat.executeQuery(sql);
while(rs.next()){
String Oid = rs.getString("Oid" );
 String Sid = rs.getString("Sid");
		String View = rs.getString("View");
		String Hotel= rs.getString("Hotel");
		String Special = rs.getString("Special"); 
		int Onumber = rs.getInt( "Onumber" );
		String Date = rs.getString( "Date" );
		String zt = rs.getString("zt"); 
		
%>
   
<SCRIPT LANGUAGE="JavaScript">  
    function reP(){  
    window.alert("���ͨ��");
    }  
    </SCRIPT> 

<tr bgcolor= "#EBEBEB">
<td><%=Oid%></td>
<td><%=Sid%></td>
<td><%=View%></td>
<td><%=Hotel%></td>
<td><%=Special%></td>
<td><%=Onumber%></td>
<td><%=Date%></td >
<td><%=zt%></td >
<td><select>
    <option value="0001">����</option>
    <option value="0002">����</option>
    <option value="0003">����</option>
    <option value="0004">����</option>
  </select></td >
<td><% if(zt.equals("�����")){
 %><a href="manupdate.jsp?Oid=<%=Oid %>">���</a>
<% } %></td >
</tr>
<%
}
stat.close();
conn.close();
%>	
</table><br><br><br>
		</div>						  				
		</div>
	</div>
</div>

</body>
</html>