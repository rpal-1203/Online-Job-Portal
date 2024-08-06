<%@page import="com.dao.JobDAO"%>
<%@ page import="com.entity.Jobs" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User: Single Jobs</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
 <c:if test="${empty userobj}"> 
        <c:redirect url="login.jsp"></c:redirect> 
   </c:if>
   <%@include file="all_component/navbar.jsp" %>
    <div class="container">
     <div class="row">
       <div class="col-md-12">
         <h5 class="text-center text-primary">All Jobs</h5>
        <%--  <c:if test="${not empty succMsg }">
                    <div class="alert alert-success" role="alert">${ succMsg }</div>
                      <c:remove var="succMsg"/>
         </c:if>  --%>
          <%
          //String idParam = request.getParameter("id");
           int id=Integer.parseInt(request.getParameter("id"));
           JobDAO dao =new JobDAO(DBConnect.getConn());
           Jobs j=dao.getJobById(id); %>
          <div class="card mt-2">
             <div class="card-body">
               <div class="text-center text-primary">
                  <i class="fas fa-clipboard fa-2x"></i>
               </div>
             
            <h6><%=j.getTitle() %></h6>
            <p><%=j.getDescription() %></p>
            <br>
            <div class="form-row">
              <div class="form-group col-md-3">
                <input type="text" class="form-control form-control-sm"
                       value="Location:<%=j.getLocation() %>" readonly>
              </div>
               <div class="form-group col-md-3">
                <input type="text" class="form-control form-control-sm"
                       value="Category:<%=j.getCategory() %>" readonly>
               </div>
            
            </div>
            <h6>Publish Date: <%=j.getPdate() %></h6>
            
           </div>      
          </div>
         

       </div>
      </div>
    </div>
</body>
</html>