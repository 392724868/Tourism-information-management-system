<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@include file="db.inc"%>
<!DOCTYPE HTML>
<html>
<head>
<title>���˿ռ�</title>
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
					
					<li><a href="#�ҵĶ���" class="scroll">�ҵĶ���</a></li>
					<li><a href="#�ҵ���Ϣ" class="scroll">�ҵ���Ϣ</a></li>
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
                       <div class="con" id="�ҵĶ���"> </div>
                      <p align="left">���ڵȵ���!��ӭ�������˿ռ䣬����������Բ�ѯ�����˶���״̬������Ϣ��Ҳ���Զ��µĶ�����Ϣ������д�������������ҳ��ʱ�������⣬��ӭ����ʱ��ϵ���ǵĿͷ����߲��������ϵ�绰010-88882773��Ԥף���������������飡</p>
					<p align="left">Finally wait for you! Welcome to the personal space, where you can query the personal order status order information, or fill in the new order information. If you encounter any problem while browsing this page, you are welcome to contact our customer service or call our service contact number 010-88882773 at any time. I wish you a happy travel experience!</p>
                      <div class="clear"></div>
                </div>
           </div>
           <div class="hr_invisible xlarge"></div>
 				<div class="strip-box">
 						<h2 class="strip">
                              <span class="strip-inner">�ҵĶ���</span></span>
                        </h2>
                </div>
 		<div class="content-top" align= "center">
        <table align= "center">

<tr bgcolor = "#5052A4">
<td width="100px"><font color="white">������� </font></td>
<td width="80px"><font color="white">����</font></td>
<td width="50px"><font color="white">�Ա�</font></td>
<td width="50px"><font color="white">����</font></td>
<td width="120px"><font color="white">����</font></td>
<td width="150px"><font color="white">����</font></td>
<td width="150px"><font color="white">��ϵ�绰</font></td>
<td width="100px"><font color="white">��������</font></td>
<td width="100px"><font color="white">����״̬</font></td>
<td width="100px"><font color="white">����</font></td>
<td width="80px"><font color="white">����</font></td>
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
<td><% if(zt.equals("������")){
 %><INPUT TYPE="button" value="����" onclick="reP()">
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
 				<div class="strip-box1" id="�ҵ���Ϣ">
 						<h2 class="strip">
                              <span class="strip-inner" >�ҵ���Ϣ</span>
                        </h2>
                </div>
		<div class="content-middle">
			<div class="col span_2_of_c">
						  <div class="contact-form">
						  	<form method="post" action="user.jsp">
							    	<div>
								    	<span><label>��������</label></span>
								    	<span><input name="userName" type="text" class="textbox"></span>
								    </div>
									<div>
								    	<span><label>�����Ա�</label></span>
								    	<span><input name="userSex" type="text" class="textbox" ></span>
								    </div>
									<div>
								    	<span><label>��������</label></span>
								    	<input name="userName" type="text" class="textbox" ></span>
								    </div>
								    <div>
								    	<span><label>���ĵ绰</label></span>
								    	<span><input name="userPhone" type="text" class="textbox"></span>
								    </div>
								   	<div>
								    	<span><label>���ľ���</label></span>
								    	<span><input name="userPlace" type="text" class="textbox"></span>
								    </div>
								<div>
								    	<span><label>��������</label></span>
								    	<span><input name="userDate" type="text" class="textbox"></span>
						      </div>
							  <div>
								    	<span><label>��������</label></span>
								    	<span><input name="userDate" type="text" class="textbox" style="height: 50px"></span>
						      </div>
								   <p class="perspective">
<SCRIPT LANGUAGE="JavaScript">  
    function repp(){  
    window.alert("�ύ�ɹ�");
    }  
    </SCRIPT>  
										 <button class="btn btn-2 btn-2h" onclick="repp()">�ύ</button>
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
