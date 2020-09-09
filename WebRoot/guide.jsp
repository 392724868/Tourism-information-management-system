<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@include file="db.inc"%>
<!DOCTYPE HTML>
<html>
<head>
<title>导游个人中心</title>
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
					<li class="active"><a href="#home" class="scroll">主页</a></li>
					
					<li><a href="#我的订单" class="scroll">排团信息</a></li>
					
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
                      <h1>Welcome to individual guide centre!</h1>
                       <div class="con" id="portfolio"> </div>
                      <p align="left">欢迎来到导游个人中心，您可以在以下界面查询到您所负责的导游团信息，以便为您的出行做好相应规划。若您在浏览本页面时遇到问题，欢迎您随时联系我们的客服或者拨打服务联系电话010-88882773，预祝您工作顺利！</p>
					<p align="left">Welcome to the tour guide personal center, you can inquire the tour guide group information in the following interface, so as to make corresponding plans for your trip. If you encounter any problems while browsing this page, please feel free to contact our customer service or call our service contact number 010-88882773. Wish you a smooth work!</p>
                      <div class="clear"></div>
                </div>
           </div>
           <div class="hr_invisible xlarge"></div>
 				<div class="strip-box">
 						<h2 class="strip">
                              <span class="strip-inner">您的排团信息</span></span>
                        </h2>
                </div>
 		<div class="content-top" align= "center">
        <table align= "center">

<tr bgcolor = "#5052A4">
<td width="80px"><font color="white">导游编号 </font></td>
<td width="80px"><font color="white">团队编号</font></td>
<td width="100px"><font color="white">导游姓名</font></td>
<td width="100px"><font color="white">开始时间</font></td>
<td width="100px"><font color="white">结束时间</font></td>
<td width="80px"><font color="white">团队人数</font></td>
<td width="90px"><font color="white">景点</font></td>
<td width="210px"><font color="white">酒店</font></td>

</tr>
<%
Connection conn = getConnection();
Statement stat = conn.createStatement();
String sql =
"SELECT T_Team.Gid,tid,Gname,Start,Over,Tnumber,View,Hotel FROM T_Guide,T_Team WHERE T_Team.Gid=T_Guide.Gid AND T_Team.Gid='0001'" ;
ResultSet rs=stat.executeQuery(sql);
while(rs.next()){
String Gid = rs.getString("Gid" );
 String tid = rs.getString("tid" );
		String Gname = rs.getString( "Gname" );
		String Start = rs.getString( "Start" );
		String Over = rs.getString( "Over" );
		int Tnumber = rs.getInt( "Tnumber" );
		String View = rs.getString( "View" );
		String Hotel = rs.getString( "Hotel" ); 	
%>
   
<tr bgcolor= "#EBEBEB">
<td><%=Gid%></td>
<td><%=tid%></td>
<td><%=Gname %></td >
<td><%=Start%></td>
<td><%=Over%></td >
<td><%=Tnumber%></td>
<td><%=View%></td >
<td><%=Hotel%></td>

</tr>
<%
}
stat.close();
conn.close();
%>
</table ><br><br><br>
			
		</div>
		
 				
								   
							
		</div>
	
	</div>
</div>

</body>
</html>
