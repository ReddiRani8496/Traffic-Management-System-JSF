<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<f:view>
  <af:document id="d1" binding="#{backing_viewAllOwnerDetails.d1}">
  
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
                <a href="viewAllVehicleDetails.jsp">Vehicle Details</a>
                <a href="viewAllOwnerDetails.jsp" style="margin-right: 20px;" class="ownerheader">Owner Details</a>
                <div
                    style="display: flex; align-items: center; margin-left: 20px;">

                    <a href="login.jsp" class="logout-button">Logout</a>
                </div>
            </div>
        </header>
        
        <h2 class="arvo-bold-italic">Owner Details</h2>
  
  
  
  
    <af:form id="f1" binding="#{backing_viewAllOwnerDetails.f1}">
      <h:dataTable value="#{managedBean.ownersList}" var="owners"
       border="2" styleClass="data-table table table-striped table-Secondary"
                   binding="#{backing_viewAllOwnerDetails.dt1}" id="dt1">
        <%-- 
          oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.Owners
        --%>
        
              <h:column id="c2">
          <f:facet name="header">
            <h:outputText value="Owner Id"
                          binding="#{backing_viewAllOwnerDetails.ot8}"
                          id="ot8"/>
          </f:facet>
          <h:outputText value="#{owners.ownerId}" id="ot13"/>
        </h:column>
                <h:column id="c8">
          <f:facet name="header">
            <h:outputText value="Id Type"
                          binding="#{backing_viewAllOwnerDetails.ot5}"
                          id="ot5"/>
          </f:facet>
          <h:outputText value="#{owners.idType}" id="ot17"/>
        </h:column>
        
        <h:column id="c5">
          <f:facet name="header">
            <h:outputText value="Address"
                          binding="#{backing_viewAllOwnerDetails.ot1}"
                          id="ot1"/>
          </f:facet>
          <h:outputText value="#{owners.address}" id="ot21"/>
        </h:column>
        <h:column id="c6">
          <f:facet name="header">
            <h:outputText value="Dateofbirth"
                          binding="#{backing_viewAllOwnerDetails.ot2}"
                          id="ot2"/>
          </f:facet>
          <h:outputText value="#{owners.dateofbirth}" id="ot19"/>
        </h:column>
        <h:column id="c3">
          <f:facet name="header">
            <h:outputText value="First Name"
                          binding="#{backing_viewAllOwnerDetails.ot3}"
                          id="ot3"/>
          </f:facet>
          <h:outputText value="#{owners.firstName}" id="ot20"/>
        </h:column>
        <h:column id="c7">
          <f:facet name="header">
            <h:outputText value="Gender"
                          binding="#{backing_viewAllOwnerDetails.ot4}"
                          id="ot4"/>
          </f:facet>
          <h:outputText value="#{owners.gender}" id="ot18"/>
        </h:column>

        <h:column id="c1">
          <f:facet name="header">
            <h:outputText value="Last Name"
                          binding="#{backing_viewAllOwnerDetails.ot6}"
                          id="ot6"/>
          </f:facet>
          <h:outputText value="#{owners.lastName}" id="ot12"/>
        </h:column>
        <h:column id="c4">
          <f:facet name="header">
            <h:outputText value="Occupation"
                          binding="#{backing_viewAllOwnerDetails.ot7}"
                          id="ot7"/>
          </f:facet>
          <h:outputText value="#{owners.occupation}" id="ot14"/>
        </h:column>
  
        <h:column id="c11">
          <f:facet name="header">
            <h:outputText value="Phone Number"
                          binding="#{backing_viewAllOwnerDetails.ot9}"
                          id="ot9"/>
          </f:facet>
          <h:outputText value="#{owners.phoneNumber}" id="ot22"/>
        </h:column>
        <h:column id="c10">
          <f:facet name="header">
            <h:outputText value="Pincode"
                          binding="#{backing_viewAllOwnerDetails.ot10}"
                          id="ot10"/>
          </f:facet>
          <h:outputText value="#{owners.pincode}" id="ot15"/>
        </h:column>
        
      </h:dataTable>
    </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_viewAllOwnerDetails--%>