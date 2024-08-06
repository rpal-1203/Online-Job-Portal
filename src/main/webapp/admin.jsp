<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@include file="all_component/all_css.jsp" %>
<style type="text/css">
.back-img{
background: url("img/admin.jpg");  
width:100%;
height: 90vh;
background-repeat:no-repeat;
background-size: cover;

}
</style>
</head>
<body>
    <c:if test="${userobj.role ne 'admin' }"> 
        <c:redirect url="login.jsp"></c:redirect> 
     </c:if>
 <%@include file="all_component/navbar.jsp" %>
   <div class="container-fluid back-img">
   <div class="text-center">
     <h1 class="text-black p-4">Welcome Admin</h1>
   </div>
   </div>
   
   <c:if test="${empty userobj }">
     <c:redirect url="login.jsp"/>
   </c:if> 
  
 
   
</body>
</html>