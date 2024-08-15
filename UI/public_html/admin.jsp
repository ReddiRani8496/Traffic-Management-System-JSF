<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<f:view>
  <html>
    <head>
      <meta http-equiv="Content-Type"
            content="text/html; charset=windows-1252"/>
      <title>adminwelcome</title>
      <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
 
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #41B06E;
            color: #fff;
            padding: 10px;
        }
 
        .left-side {
            display: flex;
            align-items: center;
        }
 
        .left-side h1 {
            margin: 0;
            padding: 0;
        }
 
        .right-side {
            display: flex;
            align-items: center;
        }
 
        .right-side a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
        }
 
        .right-side a:hover {
            background-color: #555;
        }
 
        .dropdown {
            position: relative;
            width: 120px;
            right : 80px;
            display: inline-block;
        }
 
        .dropdown a{
            font-size:x-large;
        }
 
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }
 
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
 
        .dropdown-content a:hover {
            background-color: #f1f1f1;
            color: blue;
        }
 
        .dropdown:hover .dropdown-content {
            display: block;
        }
 
        .logout-button {
            margin-left: 20px;
            padding: 10px;
            background-color: blue;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
 
        .logout-button:hover {
            background-color: blue;
        }
 
       #image {
            width: 100%;
            height: 90vh;
            background-image: url("http://218.248.44.10:8080/images1/admin-banner.jpg");
            background-size: 100vw 100vh;
            background-color: #454A4F;
            background-repeat: no-repeat;
        }
        
        </style>
    </head>
    <body>
      <header>
            <div class="left-side">
                <h1>TMS</h1>
            </div>
            <div class="right-side">
                <div class="dropdown">
                    <a href="#">Users</a>
                    <div class="dropdown-content">
                        <a href="AddUser.jsp">Add</a>
                        <a href="updateUser.jsp">Update</a>
                        <a href="DeleteUser.jsp">Delete</a>
                        <a href="viewAllUsers.jsp">View</a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#">Roles</a>
                    <div class="dropdown-content">
                        <a href="AddRole.jsp">Add</a>
                        <a href="UpdateRole.jsp">Update</a>
                        <a href="DeleteRole.jsp">Delete</a>
                        <a href="viewRoles.jsp">View</a>
                    </div>
                </div>
 
                
                <div
                    style="display: flex; align-items: center; margin-left: 20px;">
 
                    <a href="login.jsp" class="logout-button">Logout</a>
                </div>
         </div>
        </header>
        <div id="image">
 
        </div>
 
    </body>
  </html>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_adminwelcome--%>