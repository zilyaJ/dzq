<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
            function orderDetail(order_id)
	        {
	                 var url="<%=path %>/buy?type=orderDetail&order_id="+order_id;
	                 var n="";
	                 var w="600px";
	                 var h="500px";
	                 var s="resizable:no;help:no;status:no;scroll:yes";
				     openWin(url,n,w,h,s);
	        }
	        
	       function orderDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/order?type=orderDel&id="+id;
               }
           }
           
           function userXinxi(id)
           {
                     var url="<%=path %>/user?type=userXinxi&id="+id;
	                 var n="";
	                 var w="700px";
	                 var h="200px";
	                 var s="resizable:no;help:no;status:no;scroll:yes";
				     openWin(url,n,w,h,s);
           }
           
           function orderShouli(id)
           {
               if(confirm('您确定受理订单吗？'))
               {
                   window.location.href="<%=path %>/order?type=orderShouli&id="+id;
               }
           }
        </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="44" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">The order No.</td>
					<td width="10%">order of time</td>
					<td width="10%">state</td>
					
					<td width="10%">address</td>
					<td width="10%">payment </td>
					<td width="10%">total amount</td>
					<td width="10%">The detail</td>
					<td width="10%">operation </td>
		        </tr>	
				<c:forEach items="${requestScope.orderList}" var="order">
				<tr align='center' bgcolor="#FFFFFF" height="22">
					<td bgcolor="#FFFFFF" align="center">${order.bianhao}</td>
					<td bgcolor="#FFFFFF" align="center">${order.shijian}</td>
					<td bgcolor="#FFFFFF" align="center">
					     <c:if test="${order.zhuangtai=='no'}">
					       not accepted&nbsp;&nbsp;&nbsp;<a href="#" style="color: red" onclick="orderShouli(${order.id})" class="pn-loperator">accepted order</a>
					     </c:if>
					     <c:if test="${order.zhuangtai=='yes'}">
					       accepted
					     </c:if>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">${order.songhuodizhi}</td>
					<td bgcolor="#FFFFFF" align="center">${order.fukuanfangshi}</td>
					<td bgcolor="#FFFFFF" align="center">${order.jine}</td>
					<td><input value="detail" type="button" onclick="orderDetail(${order.id})"/></td>
					<td>
					    <input type="button" onclick="userXinxi(${order.user_id})" value="view user's information"/>
					    <input type="button" onclick="orderDel(${order.id})" value="delete"/>
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>
