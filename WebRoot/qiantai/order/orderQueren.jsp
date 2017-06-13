<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<script type="text/javascript">
	    function back1()
        {
           window.history.go(-1);
        }
        
        
        function fanhui()
        {
            var url="<%=path %>/qiantai/order/orderQueren.jsp";
            window.location.href=url;
        }
        
        
        function fanhui()
        {
            var url="<%=path %>/qiantai/order/orderQueren.jsp";
            window.location.href=url;
        }
	</script>
	
	<style rel="stylesheet" type="text/css">
    </style>
  </head>
  
  <body>

<div id="templatemo_container">
      <!-- 左部分 -->
	  <div id="templatemo_left_section">
		   <div id="templatemo_left_header">
		     <div id="templatemo_left_title">Sky Tune</div>
		     <div id="templatemo_left_slogan">electronic organ ...</div>
		     <div id="templatemo_latest"></div>
		   </div>
	
		   <div id="templatemo_left_menu">
		      <jsp:include flush="true" page="/qiantai/inc/caidan.jsp"></jsp:include> 
		   </div>
	
		   <div id="templatemo_left_content">
		     <h1>Order Confirmation</h1>
		         <form action="<%=path %>/buy?type=orderSubmit" name="fq" method="post">
                    <table width="98%" align="center" border="0" cellpadding="9" cellspacing="9">
							<tr align='center'>
							    <td width="25%" bgcolor="#FFFFFF" align="left">
							          consignee's ID：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							         <input type="text" readonly="readonly" value="${sessionScope.user.loginname}"/>
							    </td>
							</tr>
							<tr align='center'>
							    <td width="25%" bgcolor="#FFFFFF" align="left">
							          consignee's name：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							         <input type="text" readonly="readonly" value="${sessionScope.user.name}"/>
							    </td>
							</tr>
							<tr align='center'>
							    <td width="25%" bgcolor="#FFFFFF" align="left">
							          consignee's address：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							         <input type="text" name="songhuodizhi"/>
							    </td>
							</tr>
							<tr align='center'>
							    <td width="25%" bgcolor="#FFFFFF" align="left">
							          type of payment：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							         <select name="fukuanfangshi" style="width:155px;">
		 		                               <option value="cash on delivery COD">cash on delivery COD</option>
		 		                               <option value="online payment">online payment</option>
		 		                     </select>
							    </td>
							 </tr>
			        </table>
      				<table>
      				   <tr height="7"><td></td></tr>
	                   <tr>
	                       <td width="120"></td>
	                       <td><input type="button" value="Back" onclick="back1()"/></td>
	                       <td><input type="button" value="Submit Order" onclick="javascript:document.fq.submit();"/></td>
	                   </tr>
                    </table>
                 </form>
		   </div>
	  </div>
      <!-- 左部分 -->
      
      
      <!-- 右部分 -->
	  <div id="templatemo_right_section">
		    <div id="templatemo_right_top"></div>
		    <jsp:include flush="true" page="/qiantai/inc/right.jsp"></jsp:include> 
	  </div>
	  <!-- 右部分 -->
      <div id="templatemo_footer">
         Copyright (c)  Your Company Name | Designed by,
         <a href="<%=path %>/login.jsp">Administrator login </a>
      </div>
</div>
</body>
</html>
