<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>  
<f:view>
  <af:document id="d1" title="Register Vehicle">
   <style type="text/css">
    .container {
       width: 600px;
    margin: 10px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: white;
    padding-left: 90px;
    padding-right: 90px;
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
        width: 100%;
    padding: 8px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #F6F5F2;
    font-size: 1em;
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
        
            body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
             background-color: #FFF7F1;
        }
   
    .arvo-bold-italic {
  font-family: "Arvo", serif;
  font-weight: 700;
  font-style: italic;
  font-size:40px;
  color:#D76F30;
  margin:0px;
}

.update {
display: inline;
   padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
       background-color: #4CAF50;
    color: white;
    margin-left: 250px;
    width:180px;
    font-size:20px;
}

.regheader {
  background-color: #555;
            color: black;
            font-weight: bold;
}
.date {
     width: 100%;
    padding: 8px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #F6F5F2;
    font-size: 1em;
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
                    <a href="#">Vehicles</a>
                    <div class="dropdown-content">
                        <a href="createVehicle.jsp">Add</a>
                        <a href="updateVehicle.jsp">Update</a>
                        <a href="deletevehicle.jsp">Delete</a>
                        <a href="viewVehicles.jsp">View</a>
                    </div>
                </div>
                <a href="registrationVehicle.jsp" >Registration</a>
                <a href="transferOwnership.jsp" style="margin-right: 20px;" class="regheader">Transfer</a>
                <div
                    style="display: flex; align-items: center; margin-left: 20px;">

                    <a href="login.jsp" class="logout-button">Logout</a>
                </div>
            </div>
        </header>
  <div class="container">
    <h1 class="arvo-bold-italic">Register Vehicle</h1>
     <h:messages   />
    <af:form id="f1">
     <div class="form-group">
                <label for="it1">Registration ID</label>
                <h:inputText styleClass="input-text" id="it1" value="#{managedBean.transferRef.registrationId}" style="width:580px"
                              />
            </div>
            <div class="form-group">
      <label for="vehicleId">Vehicle ID :</label>
                <h:selectOneMenu value="#{managedBean.selectedIdReg}"  styleClass="input-text">
                <c:forEach items="#{managedBean.vehicleListRef}" var="vid" >
                <f:selectItem itemLabel="#{vid}" itemValue="#{vid}" />
                </c:forEach>
                </h:selectOneMenu>
                </div>
                
                  <div class="form-group">
                <label for="ownerId">Owner ID :</label>
                <h:selectOneMenu value="#{managedBean.selectedOwnerIdReg}" styleClass="input-text">
                <c:forEach items="#{managedBean.ownerListRef}" var="oid" >
                <f:selectItem itemLabel="#{oid}" itemValue="#{oid}" />
                </c:forEach>
                </h:selectOneMenu>
                </div>
           <div class="form-group">
                <label for="id1">Registration Date</label>
                   <af:inputDate id="id1" value="#{managedBean.transferRef.registrationDate}" styleClass="date"/>
            </div>     
            
            
      <div class="form-group">
      <af:commandButton text="Transfer" id="cb1"
                        action="#{managedBean.transferVehicle}"  inlineStyle="font-family:Arial, Helvetica, sans-serif; font-size:x-large; color:Black !important; background-color:blue important; margin-left:200px; width:200.0px;margin-top:30px;"/>
        
    </div>
    </af:form>
    </div>
      
  </af:document>
</f:view>
<%-- 
  oracle-jdev-comment:preferred-managed-bean-name:managedBean
--%>