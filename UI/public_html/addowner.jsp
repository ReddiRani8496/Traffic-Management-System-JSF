<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Arvo:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

<f:view>
  <af:document id="d1" title="addowner">
  <style type="text/css">
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
        

        .arvo-regular {
  font-family: "Arvo", serif;
  font-weight: 400;
  font-style: normal;
}

.arvo-bold {
  font-family: "Arvo", serif;
  font-weight: 700;
  font-style: normal;
}

.arvo-regular-italic {
  font-family: "Arvo", serif;
  font-weight: 400;
  font-style: italic;
}

.arvo-bold-italic {
  font-family: "Arvo", serif;
  font-weight: 700;
  font-style: italic;
  font-size:40px;
  color:#D76F30;
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
    <h1 class=" arvo-bold-italic">Add Owner</h1>
       <h:messages   />
    <af:form id="f1">
      
      <div class="form-row">
        <div class="form-column">
        
            <div class="form-group">
                <label for="it1">Owner ID</label>
                <h:inputText styleClass="input-text" id="it1" value="#{managedBean.owner.ownerId}"
                             required="true" requiredMessage="OwnerId is required"/>
            </div>
      
            <div class="form-group">
                <label for="it2">Owner ID Type</label>
                <h:inputText  styleClass="input-text" id="it2" value="#{managedBean.owner.idType}"  required="true" 
                 requiredMessage="OwnerId  Type is required"/>
            </div>
      
            <div class="form-group">
                <label for="it3">First Name</label>
                <h:inputText id="it3" value="#{managedBean.owner.firstName}"  styleClass="input-text"  required="true"
                 requiredMessage="First Name is required"/>
            </div>
      
            <div class="form-group">
                <label for="it4">Last Name</label>
                <h:inputText id="it4" value="#{managedBean.owner.lastName}"  styleClass="input-text"  required="true"
                 requiredMessage="Last Name is required"/>
            </div>
      
            <div class="form-group">
                <label for="id1">Date of Birth</label>
                   <af:inputDate id="id1" value="#{managedBean.owner.dateofbirth}" required="true"
                   
                                />
            </div>
        </div>
      
        <div class="form-column">
            <div class="form-group">
                <label for="it5">Gender</label>
                <h:inputText id="it5" value="#{managedBean.owner.gender}"  styleClass="input-text" required="true"
                 requiredMessage="Gender is required"/>
            </div>
      
            <div class="form-group">
                <label for="it7">Phone Number</label>
                <h:inputText id="it7" value="#{managedBean.owner.phoneNumber}"  styleClass="input-text" required="true"
                 requiredMessage="Phone Number is required"/>
            </div>
      
            <div class="form-group">
                <label for="it8">Address</label>
                <h:inputText id="it8" value="#{managedBean.owner.address}"  styleClass="input-text" required="true"
                 requiredMessage="Address is required"/>
            </div>
      
            <div class="form-group">
                <label for="it9">Occupation</label>
                <h:inputText id="it9" value="#{managedBean.owner.occupation}"  styleClass="input-text" required="true"
                 requiredMessage="Occupation is required"/>
            </div>
      
            <div class="form-group">
                <label for="it10">Pincode</label>
                <h:inputText id="it10" value="#{managedBean.owner.pincode}"  styleClass="input-text" required="true"
                 requiredMessage="Pincode is required"/>
            </div>
        </div>
      </div>
      
      <div class="buttons" >
        <af:commandButton text="Create" id="cb1" action="#{managedBean.owner_action}"
                          inlineStyle="font-family:Arial, Helvetica, sans-serif; font-size:x-large; color:Black !important; background-color:blue important; margin-left:400px; width:200.0px;margin-top:0px;" 
                         />
                         
      </div>
    </af:form>
  </div>
  
  
</af:document>
</f:view>


