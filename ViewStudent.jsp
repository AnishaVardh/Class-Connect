<%-- 
    Document   : ViewStudent
    Created on : 28 Apr, 2022, 8:28:30 AM
    Author     : Anisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                max-width: 700px;
                margin: 0 auto 100px;
                padding: 45px;
                margin-top: 130px;
                text-align: center;
                box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            }
            
    </style>
    </head>
    <body>
        <sql:setDataSource var="OnlineAssignmentDataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/classconnect" user="root" password="root" scope="page"/>
        <sql:query var="StudentRollnoQuery" dataSource="${OnlineAssignmentDataSource}" scope="page">
            select studentrollno from student where student_id in (select Student_id from studentuploadassignment);
        </sql:query>
        <div class="card">
            <h2>Student Assignments</h2>
        <table border="1">
            <tr>
                <th>Student Roll No</th>
                <th>Assignment</th>
                <th>Marks</th>
            </tr>
            <c:forEach var="row" items="${StudentRollnoQuery.rows}">
                <c:set var="rollno" value="${row.studentrollno}"/>
                <tr>
                <td><c:out value="${row.studentrollno}"/></td>
                <td>
                    <sql:query var="ViewAssignmentQuery" dataSource="${OnlineAssignmentDataSource}"scope="page">
                        select StudentUploadAssignment_id,AssignmentFileUpload,AssignmentGiven_id from studentuploadassignment where Student_id in (select student_id from student where studentrollno="${rollno}");
                    </sql:query>
                    <c:forEach var="row" items="${ViewAssignmentQuery.rows}">
                        <h4>Assignment Id:<c:out value="${row.AssignmentGiven_id}"/></h4>
<!--                         StudentUploadAssignment_id ke hisaab se and very important part-->
                        <a href="${pageContext.servletContext.contextPath }/Download?StudentUploadAssignment_id=${row.StudentUploadAssignment_id}">Download Student Assignment File</a><br>
                    </c:forEach>
                </td>
                <td>
                <c:forEach var="row" items="${ViewAssignmentQuery.rows}">
                    <input type="text" name="marks"/><br><br>
                </c:forEach>
                </td>
                </tr>
            </c:forEach>
        </table><br><br>
            <form action="AddMarks" method="POST">
                <input type="submit" value="submit">
                
            </form>
        </div>
    </body>
</html>
