<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - KOWOLoginProject</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%
        String username = (String) session.getAttribute("username");
        String loginTime = (String) session.getAttribute("loginTime");
        
        if(username == null) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>
    
    <div class="welcome-card">
        <h2>Welcome, <%= username %>!</h2>
        
        <div class="info-box">
            <p><strong>Login Time:</strong> <%= loginTime %></p>
            <p><strong>Session ID:</strong> <%= session.getId() %></p>
        </div>
        
        <p>You have successfully logged into the system.</p>
        <p>This is a secure area of the application.</p>
        
        <a href="logout.jsp" class="logout-btn" onclick="event.preventDefault(); document.getElementById('logoutForm').submit();">Logout</a>
        
        <form id="logoutForm" action="logout" method="post" style="display: none;">
            <input type="hidden" name="action" value="logout">
        </form>
        
        <div style="margin-top: 30px;">
            <a href="login.jsp">Back to Login</a>
        </div>
    </div>
</body>
</html>