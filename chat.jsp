<%-- 
    Document   : chat
    Created on : 8 Apr, 2022, 9:26:16 AM
    Author     : Anisha
--%>

<%@ page isErrorPage="true" language="java"
    contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored ="false" %>
<!-- Redirect to index.jsp if no UID -->
<c:if test="${UID == null}">
    <c:redirect url="chatS.jsp" />
</c:if>
<html>
    <head>
        <meta http-equiv="Content-Type" 
            content="text/html; charset=UTF-8"/>
        <title>Class Connect Chat Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
<img src="Image/CT.png" width="200" height="200" alt="CT"/>
        <link href="css/chat.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/chat.js"></script>
    </head>
    <body>
        <form action="logout.go" method="post">
            <div>This is chat page</div>
            <div>Ask your doubts</div>
            <div>Click logout to return the login page</div>
            <div>Your name: <span id="uid">${UID}</span></div>
            <div id="content" class="content"></div>
            <div>
                <!-- listen to keyup to send message if enter pressed -->
                <textarea class="msg-input" onkeyup="chat.dokeyup(event);">input text here</textarea>
            </div>
            <input type="submit" value="Logout" />
        </form>
    </body>
</html>