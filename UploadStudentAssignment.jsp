<%-- 
    Document   : UploadStudentAssignment
    Created on : 8 Apr, 2022, 9:54:09 AM
    Author     : Anisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignment Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
<img src="Image/CT.png" width="200" height="200" alt="CT"/>
        <style>
        .card {
                position: relative;
                z-index: 1;
                background: #FFFFFF;
                max-width: 360px;
                margin: 0 auto 100px;
                padding: 45px;
                margin-top: 130px;
                text-align: center;
                box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            }
            
    </style>
    </head>

    <body>
        <div class="card">
        <form action="UploadStudentAssignment" method="POST" enctype="multipart/form-data">
           <center>
            <h2>Kindly Submit Your Assignment</h2><br><br>
            Enter the File Name:<input type="text" name="Filename"><br><br>
             <input type="file" name="fileupload" required/><br><br>
             <input type="submit" value="submit">
           </center>
       </form>
   </body>
   <!-- <a href="FacultyLogin.jsp">FacultyLogin</a>-->
</div>  
</html>