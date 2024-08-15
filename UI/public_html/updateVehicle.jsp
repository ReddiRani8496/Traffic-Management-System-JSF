<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>  
<f:view>
  <af:document id="d1" title="updateOwner">
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
    }

    .form-column {
        flex: 0 0 48%;
    }

    .form-group {
        margin-bottom: 15px;
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
    margin-right: 10px;
    
}
#ownerId1{
    width: 10%;
    height: 14px;
}
.update-row .input-text {
    flex: 0.2; /* Take remaining space */
    margin-top:-2px;
    
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

    body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
             background-color: #FFF7F1;
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
  font-size:40px;
  color:#D76F30;
  margin:0px;
}
.button {
background-color: blue;
color:white;
padding:10px;
border:none;
margin-left:2px;
}

.vehicleheader {
  background-color: #555;
            color: black;
            font-weight: bold;
}
.dis {
 pointer-events: none;
background-color:#CCCCCC;
}
  </style>
   <header>
            <div class="left-side">
                <h1>TMS</h1>
            </div>
            <div class="right-side">
                <div class="dropdown">
                    <a href="#">Offence Types</a>
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
                    <a href="#" class="vehicleheader">Vehicles</a>
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
  <div class="container">
    <h1 class="arvo-bold-italic">Update Vehicle</h1>
    <h:form id="f2">  
    <div class="update-row">
   
        <label for="vehicleId">Vehicle ID</label>
        <h:inputText id="vehicleId" value="#{managedBean.vehicleRef.vehicleId}" styleClass="input-text"/>
         <h:commandButton id="searchButton" value="Search"
                          action="#{managedBean.searchVehicleId}" styleClass="button"/>
                         
    </div>
    </h:form>
    <h:form id="f1">
      
      <div class="form-row">
        <div class="form-column">
        
            <div class="form-group">
                <label for="it1">Vehicle ID</label>
                <h:inputText styleClass="input-text dis" id="it1" value="#{managedBean.vehicleRef.vehicleId}"
                              required="true" requiredMessage="Vehicle Id is required"  />
            </div>
      
            <div class="form-group">
                 <label for="it2">Engine Number</label>
                <h:inputText  styleClass="input-tex dist" id="it2" value="#{managedBean.vehicleRef.engineNumber}"
                  required="true" requiredMessage="Engine Number is required"/>
            </div>
      
            <div class="form-group">
              <label for="it3">Chassis Number</label>
                <h:inputText id="it3" value="#{managedBean.vehicleRef.chassisNumber}"  styleClass="input-text dis"
                 required="true" requiredMessage="Chassis Number is required"/>
            </div>
      
            <div class="form-group">
                <label for="it4">Vehicle Type</label>
                <h:inputText id="it4" value="#{managedBean.vehicleRef.vehicleType}"  styleClass="input-text dis"
                  required="true" requiredMessage="Vehicle Type is required"/>
            </div>
            
            <div class="form-group">
                <label for="it14">Vehicle Color</label>
                <h:inputText id="it14" value="#{managedBean.vehicleRef.vehColor}"  styleClass="input-text"
                 required="true" requiredMessage="Vehicle color is required"/>
            </div>
            
      
        </div>
      
        <div class="form-column">
           <div class="form-group">
                <label for="it5">Fuel Used</label>
                <h:inputText id="it5" value="#{managedBean.vehicleRef.fuelUsed}"  styleClass="input-text"
                 required="true" requiredMessage="Fuel is required"/>
            </div>
         <div class="form-group">
                <label for="id1">Manufacture Date</label>
                <af:inputDate id="id1" value="#{managedBean.vehicleRef.manufactureDate}"  styleClass="input-text dis"
                            inlineStyle="width: calc(100% - 140px);
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #F6F5F2;" />
            </div>
            <div class="form-group">
                <label for="it7">Manufacturer Name </label>
                <h:inputText id="it7" value="#{managedBean.vehicleRef.manufacturerName}"  styleClass="input-text dis"
                 required="true" requiredMessage="Manufacturer is required"/>
            </div>
      
            <div class="form-group">
                <label for="it8">Model</label>
                <h:inputText id="it8" value="#{managedBean.vehicleRef.model}"  styleClass="input-text dis"
                required="true" requiredMessage="Vehicle Model is required"/>
            </div>
      
            <div class="form-group">
                <label for="it9">Variant</label>
                <h:inputText id="it9" value="#{managedBean.vehicleRef.variant}"  styleClass="input-text dis"
                  required="true" requiredMessage="Variant is required"/>
            </div>
      </div>
      </div>
      <div class="buttons">
        <af:commandButton text="Update" id="cb1"
                          action="#{managedBean.updateVehicle}"  inlineStyle="font-family:Arial, Helvetica, sans-serif; font-size:x-large; color:Black !important; background-color:blue important; margin-left:20px; width:200.0px;margin-top:7px;"/>
      </div>
    </h:form>
  </div>

</af:document>
</f:view>
<%-- 
    oracle-jdev-comment:preferred-managed-bean-name:managedBean
--%>