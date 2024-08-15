<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1" binding="#{backing_vehicleById.d1}" title="vehicle by id">
  
   <h:form>  
    <div class="update-row">
        <label for="offenceId">Vehicle ID</label>
        <h:inputText id="offenceId" value="#{managedBean.vehicleByIDRef.vehicleId}" styleClass="input-text"/>
         <h:commandButton id="searchButton" value="Search" styleClass="button" style="font-size:15px"
                         action="#{managedBean.searchButton_action2}"/>                    
    </div>
    </h:form>
  
    <af:form id="f1" binding="#{backing_vehicleById.f1}">
            <h:dataTable value="#{managedBean.vehicleListRefID}" var="vehicle"
                         binding="#{backing_vehicleById.dt1}" id="dt1">
                <%-- 
                    oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.Vehicles
                --%>
                <h:column id="c11">
                    <f:facet name="header">
                        <h:outputText value="Chassis Number"
                                      binding="#{backing_vehicleById.ot1}"
                                      id="ot1"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.chassisNumber}" id="ot13"/>
                </h:column>
                <h:column id="c2">
                    <f:facet name="header">
                        <h:outputText value="Engine Number"
                                      binding="#{backing_vehicleById.ot2}"
                                      id="ot2"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.engineNumber}" id="ot14"/>
                </h:column>
                <h:column id="c7">
                    <f:facet name="header">
                        <h:outputText value="Fuel Used"
                                      binding="#{backing_vehicleById.ot3}"
                                      id="ot3"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.fuelUsed}" id="ot20"/>
                </h:column>
                <h:column id="c6">
                    <f:facet name="header">
                        <h:outputText value="Manufacturer Name"
                                      binding="#{backing_vehicleById.ot4}"
                                      id="ot4"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.manufacturerName}"
                                  id="ot17"/>
                </h:column>
                <h:column id="c5">
                    <f:facet name="header">
                        <h:outputText value="Manufacture Date"
                                      binding="#{backing_vehicleById.ot5}"
                                      id="ot5"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.manufactureDate}" id="ot18"/>
                </h:column>
                <h:column id="c8">
                    <f:facet name="header">
                        <h:outputText value="Model"
                                      binding="#{backing_vehicleById.ot6}"
                                      id="ot6"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.model}" id="ot15"/>
                </h:column>
                <h:column id="c10">
                    <f:facet name="header">
                        <h:outputText value="Variant"
                                      binding="#{backing_vehicleById.ot7}"
                                      id="ot7"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.variant}" id="ot12"/>
                </h:column>
                <h:column id="c9">
                    <f:facet name="header">
                        <h:outputText value="Vehicle Id"
                                      binding="#{backing_vehicleById.ot8}"
                                      id="ot8"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.vehicleId}" id="ot21"/>
                </h:column>
                <h:column id="c1">
                    <f:facet name="header">
                        <h:outputText value="Vehicle Type"
                                      binding="#{backing_vehicleById.ot9}"
                                      id="ot9"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.vehicleType}" id="ot19"/>
                </h:column>
                <h:column id="c3">
                    <f:facet name="header">
                        <h:outputText value="Veh Color"
                                      binding="#{backing_vehicleById.ot10}"
                                      id="ot10"/>
                    </f:facet>
                    <h:outputText value="#{vehicle.vehColor}" id="ot22"/>
                </h:column>
              
            </h:dataTable>
        </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_vehicleById--%>