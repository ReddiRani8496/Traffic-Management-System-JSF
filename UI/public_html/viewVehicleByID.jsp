<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1" binding="#{backing_viewVehicleByID.d1}" title="view by id">
  
 <h:form>  
    <div class="update-row">
        <label for="offenceId">Offence ID</label>
        <h:inputText id="offenceId" value="#{managedBean.vehicleByIDRef.vehicleId}" styleClass="input-text"/>
         <h:commandButton id="searchButton" value="Search" styleClass="button" style="font-size:15px"
                         action="#{managedBean.searchButton_action2}"/>                    
    </div>
    </h:form>
  
    <af:form id="f1" binding="#{backing_viewVehicleByID.f1}">
    <h:dataTable value="#{managedBean.vehicleListRefID}" var="veh"
                 binding="#{backing_viewVehicleByID.dt1}" id="dt1">
      <%-- 
        oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.Vehicles
      --%>
      <h:column id="c8">
        <f:facet name="header">
          <h:outputText value="Chassis Number"
                        binding="#{backing_viewVehicleByID.ot1}" id="ot1"/>
        </f:facet>
        <h:outputText value="#{veh.chassisNumber}" id="ot15"/>
      </h:column>
      <h:column id="c7">
        <f:facet name="header">
          <h:outputText value="Engine Number"
                        binding="#{backing_viewVehicleByID.ot2}" id="ot2"/>
        </f:facet>
        <h:outputText value="#{veh.engineNumber}" id="ot19"/>
      </h:column>
      <h:column id="c10">
        <f:facet name="header">
          <h:outputText value="Fuel Used"
                        binding="#{backing_viewVehicleByID.ot3}" id="ot3"/>
        </f:facet>
        <h:outputText value="#{veh.fuelUsed}" id="ot21"/>
      </h:column>
      <h:column id="c6">
        <f:facet name="header">
          <h:outputText value="Manufacturer Name"
                        binding="#{backing_viewVehicleByID.ot4}" id="ot4"/>
        </f:facet>
        <h:outputText value="#{veh.manufacturerName}" id="ot17"/>
      </h:column>
      <h:column id="c2">
        <f:facet name="header">
          <h:outputText value="Manufacture Date"
                        binding="#{backing_viewVehicleByID.ot5}" id="ot5"/>
        </f:facet>
        <h:outputText value="#{veh.manufactureDate}" id="ot13"/>
      </h:column>
      <h:column id="c3">
        <f:facet name="header">
          <h:outputText value="Model" binding="#{backing_viewVehicleByID.ot6}"
                        id="ot6"/>
        </f:facet>
        <h:outputText value="#{veh.model}" id="ot16"/>
      </h:column>
      <h:column id="c5">
        <f:facet name="header">
          <h:outputText value="Variant" binding="#{backing_viewVehicleByID.ot7}"
                        id="ot7"/>
        </f:facet>
        <h:outputText value="#{veh.variant}" id="ot18"/>
      </h:column>
      <h:column id="c11">
        <f:facet name="header">
          <h:outputText value="Vehicle Id"
                        binding="#{backing_viewVehicleByID.ot8}" id="ot8"/>
        </f:facet>
        <h:outputText value="#{veh.vehicleId}" id="ot14"/>
      </h:column>
      <h:column id="c9">
        <f:facet name="header">
          <h:outputText value="Vehicle Type"
                        binding="#{backing_viewVehicleByID.ot9}" id="ot9"/>
        </f:facet>
        <h:outputText value="#{veh.vehicleType}" id="ot22"/>
      </h:column>
      <h:column id="c1">
        <f:facet name="header">
          <h:outputText value="Veh Color"
                        binding="#{backing_viewVehicleByID.ot10}" id="ot10"/>
        </f:facet>
        <h:outputText value="#{veh.vehColor}" id="ot12"/>
      </h:column>
    
    </h:dataTable>
    </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_viewVehicleByID--%>