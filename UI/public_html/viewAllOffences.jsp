<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<f:view>
  <html>
    <head>
      <meta http-equiv="Content-Type"
            content="text/html; charset=windows-1252"/>
      <title>viewAllOffences</title>
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
             font-size:large;
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
            display: inline-block;
           
        }

        /* .dropdown a:hover{
            color:blue;
        } */

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
            ;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .logout-button:hover {
            background-color: blue;
        }

.logout-button:hover {
    background-color: blue;
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
 .data-table {
        border-collapse: collapse;
        width: 100%;
        margin-top:20px;
        font-size:medium;
    }
    
    .offencetypeheader {
  background-color: #555;
            color: black;
            font-weight: bold;
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
                    <a href="#" class="offencetypeheader">Offence Types</a>
                    <div class="dropdown-content">
                         <a href="addOffencetype.jsp">Add</a>
                        <a href="updateOffencetype.jsp">Update</a>
                        <a href="deleteOffencetype.jsp">Delete</a>
                        <a href="viewAllOffences.jsp">View</a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#">Owners</a>
                    <div class="dropdown-content">
                        <a href="addowner.jsp">Add</a>
                        <a href="updateOwner.jsp">Update</a>
                        <a href="deleteOwner.jsp">Delete</a>
                        <a href="viewOwners.jsp">View</a>
                    </div>
                </div>

                <div class="dropdown">
                    <a href="#">Vehicles</a>
                    <div class="dropdown-content">
                        <a href="createVehicle.jsp">Add</a>
                        <a href="updateVehicle.jsp">Update</a>
                        <a href="deletevehicle.jsp">Delete</a>
                        <a href="viewVehicles.jsp">View</a>
                    </div>
                </div>
                <a href="registrationVehicle.jsp">Registration</a>
                <a href="transferOwnership.jsp" style="margin-right: 20px;">Transfer</a>
                <div
                    style="display: flex; align-items: center; margin-left: 20px;">

                    <a href="login.jsp" class="logout-button">Logout</a>
                </div>
            </div>
        </header>
    
    <h2 class="arvo-bold-italic">Offence Types</h2>
    
      <h:form binding="#{backing_viewAllOffences.form1}" id="form1">
        <h:dataTable value="#{managedBean.offenceTypes}" var="offence"
                     binding="#{backing_viewAllOffences.dataTable1}"
                     id="dataTable1"   border="2" styleClass="data-table table table-striped table-Secondary">">
          <%-- 
            oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.OffenceTypes
          --%>
          <h:column>
            <f:facet name="header">
              <h:outputText value="Offense Id"
                            binding="#{backing_viewAllOffences.outputText1}"
                            id="outputText1"/>
            </f:facet>
            <h:outputText value="#{offence.offenseId}"/>
          </h:column>
          <h:column>
            <f:facet name="header">
              <h:outputText value="Offense Name"
                            binding="#{backing_viewAllOffences.outputText2}"
                            id="outputText2"/>
            </f:facet>
            <h:outputText value="#{offence.offenseName}"/>
          </h:column>
          <h:column>
            <f:facet name="header">
              <h:outputText value="Penalty"
                            binding="#{backing_viewAllOffences.outputText3}"
                            id="outputText3"/>
            </f:facet>
            <h:outputText value="#{offence.penalty}"/>
          </h:column>
          <h:column>
            <f:facet name="header">
              <h:outputText value="Vehicle Type"
                            binding="#{backing_viewAllOffences.outputText4}"
                            id="outputText4"/>
            </f:facet>
            <h:outputText value="#{offence.vehicleType}"/>
          </h:column>
         
        </h:dataTable>
      </h:form>
    </body>
  </html>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_viewAllOffences--%>