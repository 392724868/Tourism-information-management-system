<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@include file="db.inc"%>
<!DOCTYPE HTML>
<html>
<head>
<title>个人空间</title>
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
					
					<li><a href="#我的订单" class="scroll">我的订单</a></li>
					<li><a href="#我的信息" class="scroll">我的信息</a></li>
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
                       <div class="con" id="我的订单"> </div>
                      <p align="left">终于等到你!欢迎来到个人空间，在这里，您可以查询到个人订单状态订单信息，也可以对新的订单信息进行填写。若您在浏览本页面时遇到问题，欢迎您随时联系我们的客服或者拨打服务联系电话010-88882773，预祝您有愉快的旅游体验！</p>
					<p align="left">Finally wait for you! Welcome to the personal space, where you can query the personal order status order information, or fill in the new order information. If you encounter any problem while browsing this page, you are welcome to contact our customer service or call our service contact number 010-88882773 at any time. I wish you a happy travel experience!</p>
                      <div class="clear"></div>
                </div>
           </div>
           <div class="hr_invisible xlarge"></div>
 				<div class="strip-box">
 						<h2 class="strip">
                              <span class="strip-inner">我的订单</span></span>
                        </h2>
                </div>
 		<div class="content-top" align= "center">
        <table align= "center">

<tr bgcolor = "#5052A4">
<td width="100px"><font color="white">订单编号 </font></td>
<td width="80px"><font color="white">姓名</font></td>
<td width="50px"><font color="white">性别</font></td>
<td width="50px"><font color="white">人数</font></td>
<td width="120px"><font color="white">日期</font></td>
<td width="150px"><font color="white">景点</font></td>
<td width="150px"><font color="white">联系电话</font></td>
<td width="100px"><font color="white">额外需求</font></td>
<td width="100px"><font color="white">订单状态</font></td>
<td width="100px"><font color="white">报价</font></td>
<td width="80px"><font color="white">付款</font></td>
</tr>
<%
Connection conn = getConnection();
Statement stat = conn.createStatement();
String sql =
"SELECT Oid,Sname,Ssex,Onumber,Scall,View,Date,Special,zt,Price FROM T_Order,T_Service WHERE T_Service.Sid=T_Order.Sid" ;
ResultSet rs=stat.executeQuery(sql);
while(rs.next()){
String Oid = rs.getString("Oid" );
 String Sname = rs.getString("Sname" );
		String Ssex = rs.getString( "Ssex" );
		int Onumber = rs.getInt( "Onumber" );
		String Date = rs.getString( "Date" );
		String View = rs.getString( "View" );
		String Scall = rs.getString( "Scall" );
		String Special = rs.getString( "Special" ); 
		String Price = rs.getString( "Price" ); 
		String zt = rs.getString( "zt" ); 
		
%>
<SCRIPT LANGUAGE="JavaScript">  
    function reP(){  
    window.location.href="./images/zfb.jpg";
    }  
    </SCRIPT>  
   
<tr bgcolor= "#EBEBEB">
<td><%=Oid%></td>
<td><%=Sname%></td>
<td><%=Ssex %></td >
<td><%=Onumber%></td>
<td><%=Date%></td >
<td><%=View%></td>
<td><%=Scall%></td >
<td><%=Special%></td>
<td><%=zt%></td>
<td><%=Price%></td>
<td><% if(zt.equals("待付款")){
 %><INPUT TYPE="button" value="付款" onclick="reP()">
<% } %></td>
</tr>
<%
}
stat.close();
conn.close();
%>
</table ><br><br><br>
			
		</div>
		<div class="hr_invisible xlarge"></div>
 				<div class="strip-box1" id="我的信息">
 						<h2 class="strip">
                              <span class="strip-inner" >我的信息</span>
                        </h2>
                </div>
		<div class="content-middle">
			<div class="col span_2_of_c">
						  <div class="contact-form">
						  	<form method="post" action="user.jsp">
							    	<div>
								    	<span><label>您的姓名</label></span>
								    	<span><input name="userName" type="text" class="textbox"></span>
								    </div>
									<div>
								    	<span><label>您的性别</label></span>
								    	<span><input name="userSex" type="text" class="textbox" ></span>
								    </div>
									<div>
								    	<span><label>您的人数</label></span>
								    	<input name="userName" type="text" class="textbox" ></span>
								    </div>
								    <div>
								    	<span><label>您的电话</label></span>
								    	<span><input name="userPhone" type="text" class="textbox"></span>
								    </div>
								   	<div>
								    	<span><label>您的景点</label></span>
								    	<span><input name="userPlace" type="text" class="textbox"></span>
								    </div>
								<div>
								    	<span><label>您的日期</label></span>
								    	<span><input name="userDate" type="text" class="textbox"></span>
						      </div>
							  <div>
								    	<span><label>额外需求</label></span>
								    	<span><input name="userDate" type="text" class="textbox" style="height: 50px"></span>
						      </div>
								   <p class="perspective">
<SCRIPT LANGUAGE="JavaScript">  
    function repp(){  
    window.alert("提交成功");
    }  
    </SCRIPT>  
										 <button class="btn btn-2 btn-2h" onclick="repp()">提交</button>
								   </p>
							    </form>
						  </div>
  					</div>
					<div class="clear"></div>
		</div>
	
	</div>
</div>
</div>
</body>
</html>
