<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index Page</title>
    <!-- Include any CSS files here -->
    <link rel="stylesheet" type="text/css" href="styles.css">
    <%@include file="all_component/all_css.jsp" %>
    

<style type="text/css">
.back-img{
background: url("img/job_portal.png");  
width:100%;
height: 80vh;
background-repeat:no-repeat;
background-size: cover;

}
</style>
</head>

<body>
    
    <%@include file="all_component/navbar.jsp" %>
    
  
    
    <div class="container-fluid back-img">
      <div class="text-center">
        <h1 class="text-white p-4">
          <i class="fa fa-book" aria-hidden="true"></i>Online Job Portal
        </h1>
      </div>
    
    </div>
 <%@include file="all_component/footer.jsp" %>
 
  
</body>
</html>
