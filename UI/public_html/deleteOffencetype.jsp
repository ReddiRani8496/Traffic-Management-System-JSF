<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>  
<f:view>
  <html>
    <head>
      <meta http-equiv="Content-Type"
            content="text/html; charset=windows-1252"/>
      <title>deleteOffencetype</title>
            <style type="text/css">
    #addOffence {
    width: 600px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  
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
}

input[type="text"],
input[type="number"] {
    width: 40%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    /* margin-top: 10px; */
}

button[type="submit"] {
    background-color: #4CAF50;
    color: white;
}

button[type="submit"]:hover {
    background-color: #45a049;
}

button[type="button"] {
    background-color: #f44336;
    color: white;
}

button[type="button"]:hover {
    background-color: #d32f2f;
}

.form-row {
    display: flex;
    
    margin-bottom: 10px;
}

.form-row label {
    margin-right: 10px;
}


#searchButton {
    background-color: #007bff;
    color: white;
    margin-left: 10px;
    height: 34px;
}

#searchButton:hover {
    background-color: #0056b3;
}
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #FFF7F1;
    /* background-color: #aef0ca; */
}

#addOffence {
    width: 800px;
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
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #F6F5F2;
    font-size: 1em;
}

button {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}

button[type="submit"] {
    background-color: #4CAF50;
    color: white;
    margin-left: 170px;
    
}

button[type="submit"]:hover {
    background-color: #45a049;
}

button[type="button"] {
    background-color: #f44336;
    color: white;
    margin-left: 100px;
}

button[type="button"]:hover {
    background-color: #d32f2f;
}

.mandatory {
    color: red; /* You can adjust the color as needed */
    
}

#offence {
    color:blue;
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


.form-row {
    display: flex;
    justify-content: flex-end;
    align-items: center;
}

.form-row label {
    margin-right: 10px;
    
}
.form-row input {
    display: inline-block;
    width: 100px; /* Set the width as desired */
}
#offenceId{
    width: 10%;
    height: 14px;
}
.form-row input {
    flex: 0.4; /* Take remaining space */
    margin-top:3px;
    
}



#searchButton {
    margin-top: -10px;
    width:10%;
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

.update-row .input-text {
    flex: 0.3; /* Take remaining space */
    margin-top:-2px;
    margin-right:5px;
    
}
.button {
flex:0.2;
background-color: blue;
color:white;
padding:10px;
border:none;
margin-left:2px;
margin-top:-10px;
}

.update {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}

.update {
    background-color: #4CAF50;
    color: white;
    margin-left: 280px;
    width:180px;
    font-size:20px;
}

.update:hover {
    background-color: #45a049;
}

.offencetypeheader {
  background-color: #555;
            color: black;
            font-weight: bold;
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
            <h2 class="arvo-bold-italic">Delete Offence Type</h2>
             <h:messages   />
         <h:form>  
         
  
    <div class="update-row">
        <label for="offenceId">Offence ID</label>
        <h:inputText id="offenceId" value="#{managedBean.offenceRef1.offenseId}" styleClass="input-text"/>
         <h:commandButton id="searchButton" value="Search" styleClass="button"
                          action="#{managedBean.searchOffenseType1}"/>                    
    </div>
    </h:form>
     <h:form>
    <h:outputLabel for="offenceID">Offence ID <span class="mandatory">*</span>:</h:outputLabel><br />
    <h:inputText id="offenceID" value="#{managedBean.offenceRef1.offenseId}"  /><br />
    
    <h:outputLabel for="offenceType">Offence Type <span class="mandatory">*</span>:</h:outputLabel><br />
    <h:inputText id="offenceType" value="#{managedBean.offenceRef1.offenseName}" /><br />
    
    <h:outputLabel for="vehicleType">Vehicle Type <span class="mandatory">*</span>:</h:outputLabel><br />
    <h:inputText id="vehicleType" value="#{managedBean.offenceRef1.vehicleType}" required="true" /><br />
    
    <h:outputLabel for="penalty">Penalty <span class="mandatory">*</span>:</h:outputLabel><br />
    <h:inputText id="penalty" value="#{managedBean.offenceRef1.penalty}" required="true" /><br />
    
    <h:commandButton value="Delete" action="#{managedBean.deleteOffenseType}" styleClass="update" />
  
</h:form>
</div>

     
    </body>
  </html>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_deleteOffencetype--%>