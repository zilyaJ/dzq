<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%String path = request.getContextPath();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <link href="<%=path %>/css/templatemo_style.css" rel="stylesheet" type="text/css" />
      
      <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
      <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
      <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
      
      <script type="text/javascript">
	        function check()
			{                                                                                         
			     if(document.form2.loginname.value=="")
				 {
				 	alert("please input username");
					return false;
				 }
				 if(document.form2.loginpw.value=="")
				 {
				 	alert("please input password");
					return false;
				 }
				 document.getElementById("indicator").style.display="block";
				 loginService.login(document.form2.loginname.value,document.form2.loginpw.value,1,callback);
			}
			
			function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("username or password is wrong");
			    }
			    if(data=="yes")
			    {   
			        alert("login successfully");
			        window.location.reload();
			    }
			    
			}
				
				
			function logout()
			{
			    document.getElementById("indicator1").style.display="block";
			    loginService.logout(callback1);
			}
			function callback1(data)
			{
			    document.getElementById("indicator1").style.display="none";
			    var url="<%=path %>/qiantai/default.jsp";
			    window.location.href=url;
			}
	  </script>
  </head>
  
  <body>
            <div id="templatemo_right_search">
			      <form id="form1" name="form1" method="post" action="<%=path %>/goods?type=goods_search">
			        <label><input type="text" name="mingcheng" id="search_item" /></label>
			        <label><input type="submit" name="search_btn" id="search_btn" value="search" /></label>
			      </form>
		    </div>
		    <div id="templatemo_memberlog">
			      <h2>user login</h2>
			      <c:if test="${sessionScope.user==null}">
				      <form id="form2" name="form2" method="post" action="">
						<strong>username：</strong><input type="text" name="loginname" style="width: 110px;"/><br />
				        <strong>password：</strong><input type="password" name="loginpw" style="width: 110px;"/>
				        <input type="button" value="login" onclick="check()"/>
				        <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
				        <p><strong></strong><a href="#" onclick="reg()"><strong>register!</strong></a></p>
				      </form>
			      </c:if>
			      <c:if test="${sessionScope.user!=null}">
			          <br/>
				      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				     Welcome：${sessionScope.user.loginname } &nbsp;&nbsp;&nbsp;&nbsp;
				      &nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="logout()">exit</a> &nbsp;&nbsp;&nbsp;&nbsp;
				      <img id="indicator1" src="<%=path %>/img/loading.gif" style="display:none"/>
				      <br/><br/><br/>
				  </c:if>
		    </div>
		    <%-- <div id="templatemo_category">
			      <h2>product species</h2>
			      <div class="templatemo_rightmenu">
			        <ul>
			          <c:forEach items="${sessionScope.catelogList}" var="catelog">
			          <li><a href="<%=path %>/goods?type=goodsByCatelog&catelog_id=${catelog.id}">${catelog.name}</a></li>
			          </c:forEach>
			        </ul>
			      </div>
		    </div> --%>
		    <div id="templatemo_contact"><h2>Contact us </h2>
			      <p>tel: 010-100-1001<br />fax: 020-200-2002<br />email:2012213201@bupt.edu.cn</p>
		    </div>
  </body>
</html>
