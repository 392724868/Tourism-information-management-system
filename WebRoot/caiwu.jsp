<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import = "dao.CaiwuDao"%>
<%@page import = "vo.Caiwu"%>
<!DOCTYPE HTML>
<html>
<head>
<title>��������</title>
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
 <%
 	String zt = "������";
 %>

<div class="header">
	<div class="header-top">
	   <div class="wrap">
			<div class="logo">
				<a href="index.html"><img src="./images/logo.png" title="logo" ></a>
			</div>
			<div class="top-nav">
				<ul>
					<li class="active"><a href="#home" class="scroll">��ҳ</a></li>
					
					<li><a href="#portfolio" class="scroll">����ȷ������</a></li>
				
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
                      <h1>Welcome to financial center!</h1>
                       <div class="con" id="portfolio"> </div>
                      <p align="left">�𾴵Ĳ������Ա����ӭ��¼���Ĳ������ģ�����ѯ������״̬������Ϣ��ȷ��������Ϣ���������ĸ����������������ҳ��ʱ�������⣬��ӭ����ʱ��ϵ��̨����Ա�򲦴������ϵ�绰010-88882443��Ԥף��������죡</p>
					<p align="left">Dear financial manager, welcome to log on to your financial center, to inquire order status order information, order information, feel your pay. If you encounter problems while browsing this page, you are welcome to contact the administrator or call the management contact number 010-88882443 at any time, wish you a happy work!</p>
                      <div class="clear"></div>
                </div>
           </div>
           <div class="hr_invisible xlarge"></div>
 				<div class="strip-box">
 						<h2 class="strip">
                              <span class="strip-inner">����ȷ������</span></span>
                        </h2>
                </div>
 		<div class="content-top" align= "center">
 <form action="caiwuUpdate.jsp" method ="post">
 <input name ="zt" type ="hidden" value ="<%=zt%>">

<table align= "center">
<tr bgcolor = "#5052A4">
<td><font color="white">������� </font></td>
<td><font color="white">�οͱ��</font></td>
<td><font color="white">����</font></td>
<td><font color="white">�Ƶ�</font></td>
<td><font color="white">��ע</font></td>
<td><font color="white">��������</font></td>
<td><font color="white">����</font></td>
<td><font color="white">����״̬</font></td>
<td><font color="white">�۸�</font></td>


</tr>
  <%
  	CaiwuDao caiwudao = new CaiwuDao();
         ArrayList Prices = caiwudao.getAllPricesByzt(zt);
         for(int i=0;i<Prices.size();i++){
           Caiwu caiwu = (Caiwu)Prices.get(i);
  %>
    <tr bgcolor = "#EBEBEB">
    <td><%=caiwu.getOid()%></td>
    <td><%=caiwu.getSid()%></td>
    <td><%=caiwu.getView() %></td>
    <td><%=caiwu.getHotel()%></td>
    <td><%=caiwu.getSpecial()%></td>
    <td><%=caiwu.getOnumber()%></td>
    <td><%=caiwu.getDate()%></td>
    <td><%=caiwu.getzt()%></td>
    <td>
      <% if(caiwu.getPrice()==null){ %>
      <input name="Price" type="text" size="4">
       <input name="Oid" type="hidden" value="<%=caiwu.getOid()%>">
       <input name="Sid" type="hidden" value="<%=caiwu.getSid()%>">  
          <%}else{
         out.print(caiwu.getPrice());
         }%>
         </td>
<td>


<% 
} %>
         </tr>

     </table>
<br><br>
 <input type ="submit" value ="�ύ"></form><br><br><br>
			
		</div>
		
</body>
</html>
