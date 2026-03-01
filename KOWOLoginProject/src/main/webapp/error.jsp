<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - KOWOLoginProject</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h2>Authentication Error</h2>
        
        <div class="error-message">
            <%= request.getAttribute("errorMessage") != null ? 
                request.getAttribute("errorMessage") : "Invalid username or password!" %>
        </div>
        
        <div class="info-box" style="background: #fff5f5; border-color: #feb2b2;">
            <p style="text-align: center; margin-bottom: 10px;"><strong>What would you like to do?</strong></p>
        </div>
        
        <div class="links" style="display: flex; justify-content: center; gap: 20px;">
            <a href="login.jsp" class="btn" style="width: auto; padding: 10px 20px;color: #fff">Try Again</a>
            <a href="register.jsp" class="btn btn-secondary" style="width: auto; padding: 10px 20px;color: #fff">Register</a>
        </div>
        
        <div style="margin-top: 20px; text-align: center; font-size: 12px; color: #999;">
            <p>If you don't have an account, please register first.</p>
        </div>
    </div>
</body>
</html>