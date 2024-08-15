<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>

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
  margin-top:0px;
  margin-bottom:5px;
}
.form-group{
    margin-bottom:13px;
}

.ownerheader {
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
                    <a href="#" class="ownerheader">Owners</a>
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
  <div class="container">
    <h1 class="arvo-bold-italic">Update Owner</h1>
      <h:messages   />
    <h:form id="f2">  
    
    <div class="update-row">
        <label for="offenceId">Owner ID</label>
        <h:inputText id="offenceId" value="#{managedBean.ownerRef.ownerId}" styleClass="input-text"/>
         <h:commandButton id="searchButton" value="Search" styleClass="button"
                          action="#{managedBean.searchOwnersId}"/>                    
    </div>
    
    
    </h:form>
    <h:form id="f1">
      
      <div class="form-row">
        <div class="form-column">
        
            <div class="form-group">
                <label for="it1">Owner ID</label>
                <h:inputText styleClass="input-text  dis" id="it1" value="#{managedBean.ownerRef.ownerId}"
                         required="true" requiredMessage="OwnerId is required"     />
            </div>
      
            <div class="form-group">
                <label for="it2">Owner ID Type</label>
                <h:inputText  styleClass="input-text  dis" id="it2" value="#{managedBean.ownerRef.idType}"
                required="true" requiredMessage="OwnerId Type is required"/>
            </div>
      
            <div class="form-group">
                <label for="it3">First Name</label>
                <h:inputText id="it3" value="#{managedBean.ownerRef.firstName}"  styleClass="input-text"
                required="true" requiredMessage="First Name is required"/>
            </div>
      
            <div class="form-group">
                <label for="it4">Last Name</label>
                <h:inputText id="it4" value="#{managedBean.ownerRef.lastName}"  styleClass="input-text"
                required="true" requiredMessage="Last Name is required"/>
            </div>
      
            <div class="form-group">
                <label for="id1">Date of Birth</label>
                   <af:inputDate id="id1" value="#{managedBean.owner.dateofbirth}"  styleClass="input-text"
                            inlineStyle="width: calc(100% - 140px);
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #F6F5F2;" />
            </div>
        </div>
      
        <div class="form-column">
            <div class="form-group">
                <label for="it5">Gender</label>
                <h:inputText id="it5" value="#{managedBean.ownerRef.gender}"  styleClass="input-text  dis"
                required="true" requiredMessage="Gender is required"/>
            </div>
      
            <div class="form-group">
                <label for="it7">Phone Number</label>
                <h:inputText id="it7" value="#{managedBean.ownerRef.phoneNumber}"  styleClass="input-text"
                required="true" requiredMessage="Phone Number is required"/>
            </div>
      
            <div class="form-group">
                <label for="it8">Address</label>
                <h:inputText id="it8" value="#{managedBean.ownerRef.address}"  styleClass="input-text"
                required="true" requiredMessage="Address is required"/>
            </div>
      
            <div class="form-group">
                <label for="it9">Occupation</label>
                <h:inputText id="it9" value="#{managedBean.ownerRef.occupation}"  styleClass="input-text"
                required="true" requiredMessage="Occupation is required"/>
            </div>
      
            <div class="form-group">
                <label for="it10">Pincode</label>
                <h:inputText id="it10" value="#{managedBean.ownerRef.pincode}"  styleClass="input-text"
                required="true" requiredMessage="Pincode is required"/>
            </div>
        </div>
      </div>
      
      <div class="buttons">
        <af:commandButton text="Update" id="cb2" styleClass="btn"
                          action="#{managedBean.updateOwners}"  inlineStyle="font-family:Arial, Helvetica, sans-serif; font-size:x-large; color:Black !important; background-color:blue important; margin-left:10px; width:200.0px;margin-top:5px;"/>
      </div>
    </h:form>
  </div>
  
 
      
</af:document>
</f:view>
<%-- 
    oracle-jdev-comment:preferred-managed-bean-name:managedBean
--%>