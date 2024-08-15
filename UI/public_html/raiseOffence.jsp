<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>  
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
                   <a href="#" class="ownerheader">Manage Offences</a>
                    <div class="dropdown-content">
                        <a href="raiseOffence.jsp">Raise Offence</a>
                        <a href="clearRaisedOffences.jsp">Clear Offence</a>
                        <a href="viewRaisedOffByID.jsp">View By ID</a>
                        <a href="viewAllRaisedOffences.jsp" >View All</a>
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
  <div class="container">
    <h1 class=" arvo-bold-italic">Raise Offence</h1>
    <af:form id="f1">
      
      <div class="form-row">
        <div class="form-column">
        
            <div class="form-group">
                <label for="it1">Offence Detail ID</label>
                <h:inputText styleClass="input-text" id="it1" value="#{managedBean.raiseOffenceRef.offenseDetailId}"
                              />
            </div>
            
            <div class="form-group">
                <label for="id1">Offence Raised Date</label>
                   <af:inputDate id="id1" value="#{managedBean.raiseOffenceRef.offenseDateTime}"
                                />
            </div>
      
            <div class="form-group">
                <label for="it2">Place</label>
                <h:inputText  styleClass="input-text" id="it2" value="#{managedBean.raiseOffenceRef.place}"/>
            </div>
        <div class="form-group">
                <label for="it5">Registration ID</label>
                <h:inputText id="it5" value="#{managedBean.raiseRegID}"  styleClass="input-text"/>
            </div>
        </div>
      
        <div class="form-column">
          
      
            <div class="form-group">
                <label for="it7">Offence ID</label>
                <h:inputText id="it7" value="#{managedBean.raiseOffID}"  styleClass="input-text"/>
            </div>
      
            <div class="form-group">
                <label for="it8">Recorded By</label>
                <h:inputText id="it8" value="#{managedBean.raiseUserID}"  styleClass="input-text"/>
            </div>
      
            <div class="form-group">
                <label for="it9">Penalty Status</label>
                <h:inputText id="it9" value="#{managedBean.raiseOffenceRef.penaltyStatus}"  styleClass="input-text"/>
            </div>
      
        </div>
      </div>
      
      <div class="buttons" >
        <af:commandButton text="Raise" id="cb1" 
                          inlineStyle="font-family:Arial, Helvetica, sans-serif; font-size:x-large; color:Black !important; background-color:blue important; margin-left:400px; width:200.0px;margin-top:17px;" 
                         action="#{managedBean.cb1_action3}" styleClass="create"/>
                         
      </div>
    </af:form>
  </div>
    <h:panelGroup>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script type="text/javascript">
    
        
    var button = document.getElementById("cb1"); 
 
        button.addEventListener("click", function() {
            alert("Offence Added");
           
        });

        </script>
      </h:panelGroup>

</af:document>
</f:view>
<%-- 
    oracle-jdev-comment:preferred-managed-bean-name:managedBean
--%>