<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<f:view>
  <af:document id="d1" binding="#{backing_viewAllUsers.d1}">
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
         .data-table {
        border-collapse: collapse;
        width: 100%;
        margin-top:30px;
        font-size:medium;
    }
    .arvo-bold-italic {
  font-family: "Arvo", serif;
  font-weight: 700;
  font-style: italic;
  font-size:40px;
  color:#D76F30;
  text-align: center;
  margin:20px;
}

  </style>
  
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
         <h2 class="arvo-bold-italic">User Details</h2>
    <af:form id="f1" binding="#{backing_viewAllUsers.f1}">
      <h:dataTable value="#{managedBean.viewUsers}" var="userList"
                   binding="#{backing_viewAllUsers.dt1}" id="dt1"    border="2" styleClass="data-table table table-striped table-Secondary">
        <%-- 
          oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.Users
        --%>
     
      
                <h:column id="c2">
          <f:facet name="header">
            <h:outputText value="User Id" binding="#{backing_viewAllUsers.ot3}"
                          id="ot3"/>
          </f:facet>
          <h:outputText value="#{userList.userId}" id="ot8"/>
        </h:column>
          <h:column id="c3">
          <f:facet name="header">
            <h:outputText value="User Name"
                          binding="#{backing_viewAllUsers.ot4}" id="ot4"/>
          </f:facet>
          <h:outputText value="#{userList.userName}" id="ot12"/>
        </h:column>

        <h:column id="c1">
          <f:facet name="header">
            <h:outputText value="Password" binding="#{backing_viewAllUsers.ot2}"
                          id="ot2"/>
          </f:facet>
          <h:outputText value="#{userList.password}" id="ot7"/>
        </h:column>
          <h:column id="c6">
          <f:facet name="header">
            <h:outputText value="Email" binding="#{backing_viewAllUsers.ot1}"
                          id="ot1"/>
          </f:facet>
          <h:outputText value="#{userList.email}" id="ot11"/>
        </h:column>
        <h:column id="c4">
          <f:facet name="header">
            <h:outputText value="Roles" binding="#{backing_viewAllUsers.ot6}"
                          id="ot6"/>
          </f:facet>
          <h:outputText value="#{userList.roles.rolename}" id="ot9"/>
        </h:column>
      </h:dataTable>
    </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_viewAllUsers--%>