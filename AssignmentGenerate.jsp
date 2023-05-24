<%-- 
    Document   : AssignmentGenerate
    Created on : 28 Apr, 2022, 8:27:29 AM
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
                margin-top: 90px;
                text-align: center;
                box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            }
            
    </style>
    </head>
    <body>
        <div class="card">
        <form action="AssignmentGenerate" method="POST" enctype="multipart/form-data">
            <center>
                <h2>Assignment</h2>
                Enter the Assignment topic <input type="text" name="Assignmenttopic" required/><br><br>
                Enter the Assignment Description <textarea rows="4" cols="25" name="AssignmentDesc" required></textarea><br><br>
                Enter the Date:<input type="date" name="SubmissionDate" required/><br><br>
                Please Upload the Assignment file:<input type="file" name="fileupload" required/><br><br>
                <input type="submit" value="submit"/>
                
            </center>   
        </form>
        </div>
    </body>
</html>
