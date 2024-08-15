<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<f:view>
  <af:document id="d1" binding="#{backing_viewAllVehicleDetails.d1}">
  
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
    
    .vehicleheader {
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
                    <a href="#">Manage Offences</a>
                    <div class="dropdown-content">
                        <a href="raiseOffence.jsp">Raise Offence</a>
                        <a href="clearRaisedOffences.jsp">Clear Offence</a>
                        <a href="viewRaisedOffByID.jsp">View By ID</a>
                        <a href="viewAllRaisedOffences.jsp" >View All</a>
                    </div>
                </div>
                <a href="viewAllVehicleDetails.jsp"  class="ownerheader">Vehicle Details</a>
                <a href="viewAllOwnerDetails.jsp" style="margin-right: 20px;">Owner Details</a>
                <div
                    style="display: flex; align-items: center; margin-left: 20px;">

                    <a href="login.jsp" class="logout-button">Logout</a>
                </div>
            </div>
        </header>
        
        <h2 class="arvo-bold-italic">Vehicle Details</h2>
  
  
  
    <af:form id="f1" binding="#{backing_viewAllVehicleDetails.f1}">
      <h:dataTable value="#{managedBean.vehicleList}" var="vehicle"
      border="2" styleClass="data-table table table-striped table-Secondary"
                   binding="#{backing_viewAllVehicleDetails.dt1}" id="dt1">
        <%-- 
          oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.Vehicles
        --%>
        
         <h:column id="c3">
          <f:facet name="header">
            <h:outputText value="Vehicle Id"
                          binding="#{backing_viewAllVehicleDetails.ot8}"
                          id="ot8"/>
          </f:facet>
          <h:outputText value="#{vehicle.vehicleId}" id="ot14"/>
        </h:column>
        <h:column id="c9">
          <f:facet name="header">
            <h:outputText value="Chassis Number"
                          binding="#{backing_viewAllVehicleDetails.ot1}"
                          id="ot1"/>
          </f:facet>
          <h:outputText value="#{vehicle.chassisNumber}" id="ot16"/>
        </h:column>
        <h:column id="c4">
          <f:facet name="header">
            <h:outputText value="Engine Number"
                          binding="#{backing_viewAllVehicleDetails.ot2}"
                          id="ot2"/>
          </f:facet>
          <h:outputText value="#{vehicle.engineNumber}" id="ot13"/>
        </h:column>
        <h:column id="c11">
          <f:facet name="header">
            <h:outputText value="Fuel Used"
                          binding="#{backing_viewAllVehicleDetails.ot3}"
                          id="ot3"/>
          </f:facet>
          <h:outputText value="#{vehicle.fuelUsed}" id="ot17"/>
        </h:column>
        <h:column id="c5">
          <f:facet name="header">
            <h:outputText value="Manufacturer Name"
                          binding="#{backing_viewAllVehicleDetails.ot4}"
                          id="ot4"/>
          </f:facet>
          <h:outputText value="#{vehicle.manufacturerName}" id="ot18"/>
        </h:column>
        <h:column id="c1">
          <f:facet name="header">
            <h:outputText value="Manufacture Date"
                          binding="#{backing_viewAllVehicleDetails.ot5}"
                          id="ot5"/>
          </f:facet>
          <h:outputText value="#{vehicle.manufactureDate}" id="ot21"/>
        </h:column>
        <h:column id="c7">
          <f:facet name="header">
            <h:outputText value="Model"
                          binding="#{backing_viewAllVehicleDetails.ot6}"
                          id="ot6"/>
          </f:facet>
          <h:outputText value="#{vehicle.model}" id="ot12"/>
        </h:column>
        <h:column id="c8">
          <f:facet name="header">
            <h:outputText value="Variant"
                          binding="#{backing_viewAllVehicleDetails.ot7}"
                          id="ot7"/>
          </f:facet>
          <h:outputText value="#{vehicle.variant}" id="ot20"/>
        </h:column>
       
        <h:column id="c10">
          <f:facet name="header">
            <h:outputText value="Vehicle Type"
                          binding="#{backing_viewAllVehicleDetails.ot9}"
                          id="ot9"/>
          </f:facet>
          <h:outputText value="#{vehicle.vehicleType}" id="ot19"/>
        </h:column>
        <h:column id="c2">
          <f:facet name="header">
            <h:outputText value="Veh Color"
                          binding="#{backing_viewAllVehicleDetails.ot10}"
                          id="ot10"/>
          </f:facet>
          <h:outputText value="#{vehicle.vehColor}" id="ot15"/>
        </h:column>
     
      </h:dataTable>
    </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_viewAllVehicleDetails--%>