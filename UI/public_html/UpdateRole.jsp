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
      <title>UpdateRole</title>
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
                        <a href="UpdateUser.jsp">Update</a>
                        <a href="DeleteUser.jsp">Delete</a>
                        <a href="ViewUser.jsp">View</a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#">Roles</a>
                    <div class="dropdown-content">
                        <a href="AddRole.jsp">Add</a>
                        <a href="UpdateRole.jsp">Update</a>
                        <a href="DeleteRole.jsp">Delete</a>
                        <a href="ViewRole.jsp">View</a>
                    </div>
                </div>
 
                
                <div
                    style="display: flex; align-items: center; margin-left: 20px;">
 
                    <a href="#" class="logout-button">Logout</a>
                </div>
         </div>
        </header>
            <h2>Update Roles</h2>
            <h:form>
    <h:outputLabel for="roleName" value="Rolename *" />
    <h:inputText id="roleName"
                 value="#{managedBean.mrole.rolename}" required="true" />

    <h:outputLabel for="roleDesc" value="Role Description *" />
    <h:inputText id="roleDesc" value="#{managedBean.mrole.roleDescription}" required="true" /><br>
    <h:commandButton styleClass="centerButton" value="Update"
                     action="#{managedBean.updateRole}" />
    
</h:form>

        </div>
 <!--<h:panelGroup>
<script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
          function showSuccessMessage() {
                    Swal.fire({
          title:"Role Data Updated Successfully!",
          icon: "success"
        });
          }
</script>
</h:panelGroup>
-->
    </body>
  </html>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_UpdateRole--%>