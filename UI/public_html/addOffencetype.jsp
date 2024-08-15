<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://myfaces.apache.org/trinidad/html" prefix="trh"%>


<f:view>
  <html>
    <head>
      <meta http-equiv="Content-Type"
            content="text/html; charset=windows-1252"/>
      <title>addOffencetype</title>
     
      <style type="text/css">
      body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #FFF7F1;
    /* background-color: #aef0ca; */
}

#addOffence {
    width: 600px;
    margin: 10px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: white;
    padding-left: 90px;
    padding-right: 90px;
    
}

h2 {
    margin-top: 0;
    text-align: center;
}

form {
    margin-top: 20px;
   
}

label {
    font-weight: bold;
    display: inline-block;
    margin-bottom: 10px;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #F6F5F2;
    font-size: 1em;
}

.button {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}

.button {
    background-color: #4CAF50;
    color: white;
    margin-left: 250px;
    width:180px;
    font-size:20px;
}

.button:hover {
    background-color: #45a049;
}





.mandatory {
    color: red; /* You can adjust the color as needed */
    
}

#offence {
    color:#fff;
    font-size: 20px;
    text-decoration: underline;
}

/* header */
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
        .arvo-bold-italic {
  font-family: "Arvo", serif;
  font-weight: 700;
  font-style: italic;
  font-size:40px;
  color:#D76F30;
}
.offencetypeheader {
  background-color: #555;
            color: black;
            font-weight: bold;
}
.form-group {
        margin-bottom: 15px;
    }

    .form-group h:outputLabel,
    .form-group h:inputText,
    .form-group h:message {
        display: block;
        margin-bottom: 5px;
    }

    .error-message {
        color: red;
    }

    .error-messages {
        color: red;
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
        <div id="addOffence">
            <h2 class="arvo-bold-italic">Add Offence Type</h2>
            
             <h:messages   />
     <h:form id="addOffenceForm">
        <div class="form-group">
            <h:outputLabel for="offenceID" value="Offence ID *" />
            <h:inputText id="offenceID" value="#{managedBean.offence.offenseId}" required="true">
                <f:validator validatorId="offenceIDValidator" />
            </h:inputText>
            <h:message for="offenceID" styleClass="error-message" />
        </div>

        <div class="form-group">
            <h:outputLabel for="offenceType" value="Offence Type *" />
            <h:inputText id="offenceType" value="#{managedBean.offence.offenseName}" required="true">
                <f:validator validatorId="offenceTypeValidator" />
            </h:inputText>
            <h:message for="offenceType" styleClass="error-message" />
        </div>

        <div class="form-group">
            <h:outputLabel for="vehicleType" value="Vehicle Type *" />
            <h:inputText id="vehicleType" value="#{managedBean.offence.vehicleType}" required="true">
                <f:validator validatorId="vehicleTypeValidator" />
            </h:inputText>
            <h:message for="vehicleType" styleClass="error-message" />
        </div>
        <div class="form-group">
            <h:outputLabel for="penalty" value="Penalty *" />
            <h:inputText id="penalty" value="#{managedBean.offence.penalty}" required="true" requiredMessage="Penalty should be number">
                <f:validator validatorId="penaltyValidator" />
            </h:inputText>
            <h:message for="penalty" styleClass="error-message" />
        </div>

        <h:commandButton value="Create" type="submit" action="#{managedBean.addOffenseType_action}" styleClass="button" />

    </h:form>
    
        </div>
       
      

    </body>
  </html>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_addOffencetype--%>