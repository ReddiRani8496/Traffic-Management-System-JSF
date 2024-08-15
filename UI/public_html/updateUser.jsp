<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--<link rel='stylesheet' href='
https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
  -->
<f:view>
  <html>
    <head>
      <meta http-equiv="Content-Type"
            content="text/html; charset=windows-1252"/>
      <title>UpdateUser</title>
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
            <h2>Update Users</h2>
            <h:form>
                <h:outputLabel for="userId">UserId <span class="mandatory">*</span>:</h:outputLabel>
        <h:inputText styleClass="find" id="userId" required="true"
                     value="#{managedBean.userId}"/>
        <h:commandButton styleClass="findButton" value="Search"
                        action="#{managedBean.importUser}"/>
</h:form>
<h:form>
        <h:outputLabel for="userName">Username <span class="mandatory">*</span>:</h:outputLabel>
        <h:inputText  id="userName" required="true"
                     value="#{managedBean.user.userName}"/>
        
        <h:outputLabel for="email">Email <span class="mandatory">*</span>:</h:outputLabel>
        <h:inputText id="email" required="true"
                     value="#{managedBean.user.email}"/>

        <h:outputLabel for="password">Password <span class="mandatory">*</span>:</h:outputLabel>
        <h:inputText id="password" required="true" style="type:hidden"
                       value="#{managedBean.user.password}"/>

      <div>
<label for="rolename">Role:</label>
<h:selectOneMenu value="#{managedBean.roleName}" styleClass="drop">
<c:forEach items="#{managedBean.roleListRef}" var="role" >
<f:selectItem itemLabel="#{role}" itemValue="#{role}" />
</c:forEach>
</h:selectOneMenu> 
</div>
        <h:commandButton styleClass="centerButton" value="Update"
        
                         action="#{managedBean.updateUser}"/>
           
     <!--   </div>  -->
  </h:form>
<!--  <h:panelGroup>
<script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
          function showSuccessMessage() {
                    Swal.fire({
          title:"User Data Updated Successfully!",
          icon: "success"
        });
          }
</script>
</h:panelGroup>-->
    </body>
  </html>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_UpdateUser--%>