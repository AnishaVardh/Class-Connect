<%-- 
    Document   : Dashboard
    Created on : 3 Mar, 2022, 11:33:05 PM
    Author     : Anisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Dashboard</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
  }
  .container-fluid {
    padding: 10px 100px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
  </style>
</head>

<body>
<center>
 <div class="container">
     <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
        <center><img src="Image/CT.png" width="100" height="100" alt="CT"/></center>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="#" >Class Connect</a>
    </div>
        <div class="collapse navbar-collapse" id="myNavbar">
    
      <ul class="nav navbar-nav navbar-right" >
        <li>
        <a href="index.html" target="_blank" >
        <span class="glyphicon glyphicon-user"></span> Faculty</a>
        </li>
      </ul>
    </div>
       
    </div></div></div>
<body>
 <div class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
        </center>        
<!-- Container (Services Section) -->
<div class="container-fluid text-center">
  <h2>DASHBOARD</h2>
  
  <br>
  <div class="row">
    
      <div class="col-sm-4">
          <a href="syllabus.html" target="_self">
        <button type="button" class="btn btn-link">     
            <span class="glyphicon glyphicon-list-alt logo-small"></span> 
          <h4>SYLLABUS</h4></a>
       </button>
     </div>
          
     <div class="col-sm-4">
         <a href="Marks.jsp" target="_self">
        <button type="button" class="btn btn-link"> 
      <span class="glyphicon glyphicon-stats logo-small"></span>
      <h4>GRADES</h4></a>
       </button>
      
    </div>
    <div class="col-sm-4">
        <a href="FacultyDashboard.jsp" target="_self">
        <button type="button" class="btn btn-link"> 
      <span class="glyphicon glyphicon-folder-open logo-small"></span>
      <h4>ASSIGNMENTS</h4></a>
       </button>
      
    </div>
  </div>
  <br><br>
  
  <div class="row">
    <div class="col-sm-4">
        <a href="testfac.html" target="_self">
        <button type="button" class="btn btn-link"> 
      <span class="glyphicon glyphicon-pencil logo-small"></span>
      <h4>TESTS</h4></a>
       </button>
      
    </div>
    <div class="col-sm-4">
        <a href="chatS.jsp" target="_self">
        <button type="button" class="btn btn-link"> 
      <span class="glyphicon glyphicon-comment logo-small"></span>
      <h4>CHATS</h4></a>
       </button>
      
    </div>
    <div class="col-sm-4">
        <a href="calender.html" target="_self">
        <button type="button" class="btn btn-link"> 
      <span class="glyphicon glyphicon-calendar logo-small"></span>
      <h4>CALENDER</h4></a>
       </button>
      
    </div>
  </div>
</div>
  
  
</body>
</html>

