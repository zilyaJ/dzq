<%@ page language="java" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	
	<STYLE type=text/css>
		BODY {FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体}
		TD {FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体}
	</STYLE>
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
       
	<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("Please enter user name");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("Please enter password");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("Logon failure");
		    }
		    if(data=="yes")
		    {
		        alert("Log in successfully");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
    </script>
  </head>
  
  
  
<body>
<form action="<%=path %>/login?type=login" name="ThisForm" method="post">
<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
	  <TR>
	       <TD style="HEIGHT: 105px"><IMG src="<%=path %>/images/login_1.gif" border=0></TD>
	  </TR>
	  <TR>
	       <TD background="<%=path %>/images/login_2.jpg" height=300>
		      <TABLE height=300 cellPadding=0 width=900 border=0>
		        <TR><TD colSpan=2 height=35></TD></TR>
		        <TR>
		          <TD width=360></TD>
		          <TD>
		            <TABLE cellSpacing=0 cellPadding=2 border=0>
			              <TR>
			                <TD style="HEIGHT: 28px" width=80>username：</TD>
			                <TD style="HEIGHT: 28px" width=150><INPUT style="WIDTH: 130px" name=userName type="text"></TD>
			                <TD style="HEIGHT: 28px" width=370></TD>
			              </TR>
			              <TR>
			                <TD style="HEIGHT: 28px" width=80>password：</TD>
			                <TD style="HEIGHT: 28px" width=150><INPUT style="WIDTH: 130px" type=password name=userPw></TD>
			                <TD style="HEIGHT: 28px" width=370></TD>
			              </TR>
			              <TR>
			                <TD style="HEIGHT: 18px"></TD>
			                <TD style="HEIGHT: 18px"></TD>
			                <TD style="HEIGHT: 18px"></TD>
			              </TR>
			              <TR>
			                <TD></TD>
			                <TD>
			                   <input type="button" value="login" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" onclick='check1()'>
			                   <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
			                </TD>
			              </TR>
		            </TABLE>
		          </TD>
		        </TR>
		      </TABLE>
	       </TD>
	  </TR>
      <TR>
           <TD><IMG src="<%=path %>/images/login_3.jpg" border=0></TD>
      </TR>
</TABLE>
</form>
</body>
</html>
