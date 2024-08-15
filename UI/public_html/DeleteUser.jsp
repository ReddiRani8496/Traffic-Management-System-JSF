<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!--<link rel='stylesheet' href='
https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
-->
<f:view>
  <html>
    <head>
      <meta http-equiv="Content-Type"
            content="text/html; charset=windows-1252"/>
      <title>DeleteUser</title>
      <link rel="stylesheet" href="../css/AdminCSS.css">
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
            <h2>Delete User</h2>
            <h:form>
        <h:outputLabel for="userId">UserId <span class="mandatory">*</span>:</h:outputLabel>
        <h:inputText id="userId" required="true" value="#{managedBean.userId}"/>
     
        <h:commandButton styleClass="centerButton" value="Delete" type="submit"
        
                         action="#{managedBean.deleteUser}"/>    </h:form>
        </div>
   <!-- <h:panelGroup>
<script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
          function showSuccessMessage() {
                    Swal.fire({
          title:"User Deleted Successfully!",
          icon: "success"
        });
          }
</script>
</h:panelGroup>-->
    </body>
  </html>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_DeleteUser--%>
<%-- 
    oracle-jdev-comment:preferred-managed-bean-name:managedBean
--%>