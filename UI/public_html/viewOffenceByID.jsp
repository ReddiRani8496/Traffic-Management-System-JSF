<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<f:view>
  <af:document id="d1" binding="#{backing_viewOffenceByID.d1}">
     <style type="text/css">

     .container {
        max-width: 1000px;
        margin: 10px auto;
        padding: 0px 20px 10px 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    h1 {
        text-align: center;
    }

    .form-row {
        display: flex;
        justify-content: space-evenly;
        flex-wrap: wrap;
        align-items: center;
        margin-left: 100px;
        margin-bottom:0px;
    }

    .form-column {
        flex: 0 0 48%;
    }

    .form-group {
        margin-bottom: 7px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        font-size:15px;
    }

.input-text {
        width: calc(100% - 160px);
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #F6F5F2;
    }

    .buttons {
        display: flex;
        justify-content: space-evenly;
        margin-top: 20px;
    }

    .create-button,
    .cancel-button {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .cancel-button {
        background-color: #f44336;
        margin-left: 10px;
    }
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
            margin-bottom: 40px;
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
        .update-row {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    margin-bottom: 20px;
}
.update-row .input-text {
    display: inline-block;
    width: 100px; /* Set the width as desired */
    margin-left:20px;
}
.update-row label {
    margin-right: 5px;
    
}
#ownerId1{
    width: 10%;
    height: 14px;
}
.update-row .input-text {
    flex: 0.17; /* Take remaining space */
    margin-top:-2px;
    margin-right:5px;
    
}
.button {
flex:0.05;
background-color: blue;
color:white;
padding:8px;
border:none;
margin-left:2px;
margin-top:-4px;
}
.searchButton {
    background-color: #007bff;
    color: white;
    margin-left: 20px;
    height: 30px;
    border:none;
    width: 80px;
}

.searchButton:hover {

    background-color: #0056b3;
}
.searchButton {
font-size:20px;
    margin-top: -6px;
}

    .container {
        max-width: 1000px;
        margin: 10px auto;
        padding: 0px 20px 10px 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color:White;
    }
    .arvo-bold-italic {
  font-family: "Arvo", serif;
  font-weight: 700;
  font-style: italic;
  font-size:34px;
  color:#D76F30;
  margin-top:10px;
  margin-bottom:15px;
}
.form-group{
    margin-bottom:13px;
}

.ownerheader {
  background-color: #555;
            color: black;
            font-weight: bold;
}
 .data-table {
        border-collapse: collapse;
        width: 100%;
        margin-top:20px;
        font-size:medium;
    }

      </style>
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
                         <a href="viewOffenceByID.jsp">View By ID</a>
                        <a href="viewAllOffences.jsp">View All</a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#">Owners</a>
                    <div class="dropdown-content">
                        <a href="addowner.jsp">Add</a>
                        <a href="updateOwner.jsp">Update</a>
                        <a href="deleteOwner.jsp">Delete</a>
                         <a href="viewOwnerById.jsp">View By ID</a>
                        <a href="viewOwners.jsp">View All</a>
                    </div>
                </div>

                <div class="dropdown">
                    <a href="#">Vehicles</a>
                    <div class="dropdown-content">
                        <a href="createVehicle.jsp">Add</a>
                        <a href="updateVehicle.jsp">Update</a>
                        <a href="deletevehicle.jsp">Delete</a>
                        <a href="viewVehicleByID.jsp">View By IDl</a>
                        <a href="viewVehicles.jsp">View All</a>
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
    <h:form>  
    <div class="update-row">
        <label for="offenceId">Offence ID</label>
        <h:inputText id="offenceId" value="#{managedBean.of.offenseId}" styleClass="input-text"/>
         <h:commandButton id="searchButton" value="Search" styleClass="button" style="font-size:15px"
                         action="#{managedBean.getOffenceById}"/>                    
    </div>
    </h:form>
    <af:form id="f1" binding="#{backing_viewOffenceByID.f1}">
      <h:dataTable value="#{managedBean.offenceByIdList}" var="off"
        styleClass="data-table table table-striped "
                   binding="#{backing_viewOffenceByID.dt1}" id="dt1">
        <%-- 
          oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.OffenceTypes
        --%>
        <h:column id="c4">
          <f:facet name="header">
            <h:outputText value="Offense Id"
                          binding="#{backing_viewOffenceByID.ot1}" id="ot1"/>
          </f:facet>
          <h:outputText value="#{off.offenseId}" id="ot8"/>
        </h:column>
        <h:column id="c1">
          <f:facet name="header">
            <h:outputText value="Offense Name"
                          binding="#{backing_viewOffenceByID.ot2}" id="ot2"/>
          </f:facet>
          <h:outputText value="#{off.offenseName}" id="ot9"/>
        </h:column>
        <h:column id="c5">
          <f:facet name="header">
            <h:outputText value="Penalty"
                          binding="#{backing_viewOffenceByID.ot3}" id="ot3"/>
          </f:facet>
          <h:outputText value="#{off.penalty}" id="ot7"/>
        </h:column>
        <h:column id="c2">
          <f:facet name="header">
            <h:outputText value="Vehicle Type"
                          binding="#{backing_viewOffenceByID.ot4}" id="ot4"/>
          </f:facet>
          <h:outputText value="#{off.vehicleType}" id="ot6"/>
        </h:column>
    
      </h:dataTable>
    </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_viewOffenceByID--%>