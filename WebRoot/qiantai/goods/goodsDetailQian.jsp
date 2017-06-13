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
		function buy1(kucun)
        {
            <c:if test="${sessionScope.user==null}">
                alert("please log in first");
            </c:if>
            <c:if test="${sessionScope.user!=null}">
	            if(document.buy.quantity.value=="")
	            {
	                alert("please input purchase quantity");
	                return false;
	            }
	            document.buy.submit();
            </c:if>
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
		     <div id="templatemo_left_title">Sky tune</div>
		     <div id="templatemo_left_slogan">electronic organ ...</div>
		     <div id="templatemo_latest"></div>
		   </div>
	
		   <div id="templatemo_left_menu">
		     <jsp:include flush="true" page="/qiantai/inc/caidan.jsp"></jsp:include> 
		   </div>
	
		   <div id="templatemo_left_content">
		     <h3>product detail</h3>
		     <div class="templatemo_left_content">
		         <p>product no.：${requestScope.goods.bianhao }</p>
		         <p>product name：${requestScope.goods.mingcheng }</p>
		         <p>product detail：<c:out value="${requestScope.goods.jieshao }" escapeXml="false"></c:out></p>
		         <p>product price：${requestScope.goods.shichangjia }</p>
                 <p>
                   <form action="<%=path %>/buy?type=addToCart" method="post" name="buy">   
                      purchase quantity：<input type="text" name="quantity" value="1" size="8" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
				   <input type="hidden" name="goods_id" value="${requestScope.goods.id }"/>
				   <input type="button" value="purchase" onclick="buy1(${requestScope.goods.kucun })"/>
				   </form>
                 </p>
		     </div>
		   </div>
		    <div id="templatemo_left_content">
		     <br />
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
