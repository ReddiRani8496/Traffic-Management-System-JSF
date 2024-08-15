<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>  
<f:view>
  <af:document id="d1" binding="#{backing_transferOwnership.d1}" title="transfer">
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

      </style>
    
   <header>
            <div class="left-side">
                <h1>TMS</h1>
            </div>
            <div class="right-side">
                <div class="dropdown">
                    <a href="#" >Offence Types</a>
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
                
                <a href="transferOwnership.jsp" style="margin-right: 20px;" class="offencetypeheader">Transfer</a>
                <div
                    style="display: flex; align-items: center; margin-left: 20px;">

                    <a href="login.jsp" class="logout-button">Logout</a>
                </div>
            </div>
        </header>
  
  <h:form>  
    <div class="update-row">
        <label for="offenceId">Registration ID</label>
        <h:inputText id="offenceId" value="#{managedBean.transferRef.registrationId}" styleClass="input-text"/>
         <h:commandButton id="searchButton" value="Search" styleClass="button" style="font-size:15px"
                          action="#{managedBean.cb1_action2}"/>                    
    </div>
    </h:form>
 
 
    <h1 class="arvo-bold-italic">Vehicle Details</h1>
    <af:form id="f1" binding="#{backing_transferOwnership.f1}">

      <h:dataTable value="#{managedBean.listOfVehicles}" var="veh"
                   binding="#{backing_transferOwnership.dt1}" id="dt1" styleClass="data-table table table-striped table-Secondary" style="font-size:15px">
        <%-- 
          oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.Vehicles
        --%>
        <h:column id="c5">
          <f:facet name="header">
            <h:outputText value="Chassis Number"
                          binding="#{backing_transferOwnership.ot1}" id="ot1"/>
          </f:facet>
          <h:outputText value="#{veh.chassisNumber}" id="ot18"/>
        </h:column>
        <h:column id="c10">
          <f:facet name="header">
            <h:outputText value="Engine Number"
                          binding="#{backing_transferOwnership.ot2}" id="ot2"/>
          </f:facet>
          <h:outputText value="#{veh.engineNumber}" id="ot14"/>
        </h:column>
        <h:column id="c7">
          <f:facet name="header">
            <h:outputText value="Fuel Used"
                          binding="#{backing_transferOwnership.ot3}" id="ot3"/>
          </f:facet>
          <h:outputText value="#{veh.fuelUsed}" id="ot12"/>
        </h:column>
        <h:column id="c4">
          <f:facet name="header">
            <h:outputText value="Manufacturer Name"
                          binding="#{backing_transferOwnership.ot4}" id="ot4"/>
          </f:facet>
          <h:outputText value="#{veh.manufacturerName}" id="ot20"/>
        </h:column>
        <h:column id="c1">
          <f:facet name="header">
            <h:outputText value="Manufacture Date"
                          binding="#{backing_transferOwnership.ot5}" id="ot5"/>
          </f:facet>
          <h:outputText value="#{veh.manufactureDate}" id="ot15"/>
        </h:column>
        <h:column id="c6">
          <f:facet name="header">
            <h:outputText value="Model"
                          binding="#{backing_transferOwnership.ot6}" id="ot6"/>
          </f:facet>
          <h:outputText value="#{veh.model}" id="ot21"/>
        </h:column>
        <h:column id="c11">
          <f:facet name="header">
            <h:outputText value="Variant"
                          binding="#{backing_transferOwnership.ot7}" id="ot7"/>
          </f:facet>
          <h:outputText value="#{veh.variant}" id="ot19"/>
        </h:column>
        <h:column id="c2">
          <f:facet name="header">
            <h:outputText value="Vehicle Id"
                          binding="#{backing_transferOwnership.ot8}" id="ot8"/>
          </f:facet>
          <h:outputText value="#{veh.vehicleId}" id="ot17"/>
        </h:column>
        <h:column id="c3">
          <f:facet name="header">
            <h:outputText value="Vehicle Type"
                          binding="#{backing_transferOwnership.ot9}" id="ot9"/>
          </f:facet>
          <h:outputText value="#{veh.vehicleType}" id="ot16"/>
        </h:column>
        <h:column id="c9">
          <f:facet name="header">
            <h:outputText value="Veh Color"
                          binding="#{backing_transferOwnership.ot10}"
                          id="ot10"/>
          </f:facet>
          <h:outputText value="#{veh.vehColor}" id="ot22"/>
        </h:column>
        
      </h:dataTable>
      <h1 class="arvo-bold-italic">Pending Offences</h1>

        <h:dataTable value="#{managedBean.listOfPendingOffences}" var="pending"
                     binding="#{backing_transferOwnership.dt2}" id="dt2" styleClass="data-table table table-striped table-Secondary" style="font-size:15px">
          <%-- 
            oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.OffenceDetails
          --%>
         
          <h:column id="c12">
            <f:facet name="header">
              <h:outputText value="Offense Raised Date"
                            binding="#{backing_transferOwnership.ot24}"
                            id="ot24"/>
            </f:facet>
            <h:outputText value="#{pending.offenseDateTime}" id="ot37"/>
          </h:column>
          <h:column id="c14">
            <f:facet name="header">
              <h:outputText value="Offense Detail Id"
                            binding="#{backing_transferOwnership.ot25}"
                            id="ot25"/>
            </f:facet>
            <h:outputText value="#{pending.offenseDetailId}" id="ot34"/>
          </h:column>
          <h:column id="c16">
            <f:facet name="header">
              <h:outputText value="Penalty Status"
                            binding="#{backing_transferOwnership.ot26}"
                            id="ot26"/>
            </f:facet>
            <h:outputText value="#{pending.penaltyStatus}" id="ot36"/>
          </h:column>
          <h:column id="c17">
            <f:facet name="header">
              <h:outputText value="Place"
                            binding="#{backing_transferOwnership.ot27}"
                            id="ot27"/>
            </f:facet>
            <h:outputText value="#{pending.place}" id="ot38"/>
          </h:column>
          <h:column id="c13">
            <f:facet name="header">
              <h:outputText value="Registrations"
                            binding="#{backing_transferOwnership.ot28}"
                            id="ot28"/>
            </f:facet>
            <h:outputText value="#{pending.registrations.registrationId}" id="ot35"/>
          </h:column>
          <h:column id="c19">
            <f:facet name="header">
              <h:outputText value="Offence Types"
                            binding="#{backing_transferOwnership.ot29}"
                            id="ot29"/>
            </f:facet>
            <h:outputText value="#{pending.offenceTypes.offenseName}" id="ot31"/>
          </h:column>
          <h:column id="c15">
            <f:facet name="header">
              <h:outputText value="Users"
                            binding="#{backing_transferOwnership.ot30}"
                            id="ot30"/>
            </f:facet>
            <h:outputText value="#{pending.users.userName}" id="ot32"/>
          </h:column>
        </h:dataTable>
     <h:commandButton value="Clear Offences " type="submit" id="cb1" style=" padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 30px; background-color: #4CAF50;
    color: white;
    margin-left: 500px; width:170px; font-size:17px; font-weight:bold;"
                            action="#{managedBean.commandButton_action}"  onclick = "showSuccessMessage(); "/>
                            
                            
       <h:commandButton value="Next" type="submit" id="cb2"   style=" padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 30px;  
    color: white;
     font-size:17px; font-weight:bold;
    margin-left: 100px; width:170px; background-color: #4CAF50;"
                              action="cancel"/>
      
    </af:form>
    <h:panelGroup>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script type="text/javascript">
          function showSuccessMessage() {
                    Swal.fire({
          title:"Offences cleared",
          icon: "success"
        });
        enable();
          }
          
            var button = document.getElementById("cb1"); 
             var button1 = document.getElementById("cb2"); 
 
        button.addEventListener("click", function() {
            button.disabled = true; // Disable the clear button
            button1.disabled = false; // Enable the next button
            button1.style.backgroundColor="#f44336";
           button.style.backgroundColor="#CCCCCC";
        });
        
        function enable() {
             button.disabled = true; // Disable the clear button
            button1.disabled = false; // Enable the next button
             button1.style.backgroundColor="#f44336";
           button.style.backgroundColor="#CCCCCC";
        }
        
        </script>
      </h:panelGroup>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_transferOwnership--%>