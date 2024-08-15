<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<f:view>
  <af:document id="d1" binding="#{backing_viewRaisedOffByID.d1}">
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
                    <a href="#"  class="ownerheader">Manage Offences</a>
                    <div class="dropdown-content">
                        <a href="raiseOffence.jsp">Raise Offence</a>
                        <a href="clearRaisedOffences.jsp">Clear Offence</a>
                        <a href="viewRaisedOffByID.jsp">View By ID</a>
                        <a href="viewAllRaisedOffences.jsp">View All</a>
                    </div>
                </div>
                <a href="viewAllVehicleDetails.jsp">Vehicle Details</a>
                <a href="viewAllOwnerDetails.jsp" style="margin-right: 20px;">Owner Details</a>
                <div
                    style="display: flex; align-items: center; margin-left: 20px;">

                    <a href="login.jsp" class="logout-button">Logout</a>
                </div>
            </div>
        </header>
      <h:form>  
    <div class="update-row">
                
                    <label for="offenceId">
                        Registration ID
                    </label>
                     
                    <h:inputText id="offenceId"
                                 value="#{managedBean.transferRef.registrationId}"
                                 styleClass="input-text"/>
                     
                    <h:commandButton id="searchButton" value="Search"
                                     styleClass="button" style="font-size:15px"
                                     action="#{managedBean.searchButton_action}"/>
                </div>
                </h:form>
                
                
                <h1 class="arvo-bold-italic">Pending Offences</h1>
                    <h:dataTable value="#{managedBean.listOfPendingOffences}"
                                 var="pending"
                                 binding="#{backing_viewRaisedOffByID.dt1}"
                                 id="dt1" styleClass="data-table table table-striped table-Secondary" >
                        <%-- 
                            oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.OffenceDetails
                        --%>
                          <h:column id="c1">
                            <f:facet name="header">
                                <h:outputText value="Offense Detail Id"
                                              binding="#{backing_viewRaisedOffByID.ot3}"
                                              id="ot3"/>
                            </f:facet>
                            <h:outputText value="#{pending.offenseDetailId}"
                                          id="ot11"/>
                        </h:column>
                        <h:column id="c7">
                            <f:facet name="header">
                                <h:outputText value="Offense Date Time"
                                              binding="#{backing_viewRaisedOffByID.ot2}"
                                              id="ot2"/>
                            </f:facet>
                            <h:outputText value="#{pending.offenseDateTime}"
                                          id="ot12"/>
                        </h:column>
                      
                        <h:column id="c3">
                            <f:facet name="header">
                                <h:outputText value="Penalty Status"
                                              binding="#{backing_viewRaisedOffByID.ot4}"
                                              id="ot4"/>
                            </f:facet>
                            <h:outputText value="#{pending.penaltyStatus}"
                                          id="ot13"/>
                        </h:column>
                        <h:column id="c4">
                            <f:facet name="header">
                                <h:outputText value="Place"
                                              binding="#{backing_viewRaisedOffByID.ot5}"
                                              id="ot5"/>
                            </f:facet>
                            <h:outputText value="#{pending.place}" id="ot10"/>
                        </h:column>
                        <h:column id="c5">
                            <f:facet name="header">
                                <h:outputText value="Registrations"
                                              binding="#{backing_viewRaisedOffByID.ot6}"
                                              id="ot6"/>
                            </f:facet>
                            <h:outputText value="#{pending.registrations.registrationId}"
                                          id="ot16"/>
                        </h:column>
                        <h:column id="c6">
                            <f:facet name="header">
                                <h:outputText value="Offence Types"
                                              binding="#{backing_viewRaisedOffByID.ot7}"
                                              id="ot7"/>
                            </f:facet>
                            <h:outputText value="#{pending.offenceTypes.offenseId}"
                                          id="ot9"/>
                        </h:column>
                        <h:column id="c8">
                            <f:facet name="header">
                                <h:outputText value="Users"
                                              binding="#{backing_viewRaisedOffByID.ot8}"
                                              id="ot8"/>
                            </f:facet>
                            <h:outputText value="#{pending.users.userId}" id="ot14"/>
                        </h:column>
                    </h:dataTable>
           

  
    <af:form id="f1" binding="#{backing_viewRaisedOffByID.f1}"></af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_viewRaisedOffByID--%>