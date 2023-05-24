<%-- 
    Document   : AddStudent
    Created on : 28 Apr, 2022, 8:19:23 AM
    Author     : Anisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <form action="AddStudent" method="POST">
           
                <h2>Add Student</h2>     
            Enter the Student name:<input type="text" name="studentname" required/><br><br>
            Enter the Student mail:<input type="text" name="studentmail" required/><br><br>
            Enter the Student Rollno:<input type="text" name="studentrollno" required/><br><br>
            <input type="submit" value="Add">
            
        </form>
        </div>
    </body>
</html>
