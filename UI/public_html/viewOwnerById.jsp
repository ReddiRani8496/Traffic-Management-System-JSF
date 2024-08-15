<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1" binding="#{backing_viewOwnerById.d1}" title="view by owner id">
   <h:form>  
    <div class="update-row">
        <label for="offenceId">Owner ID</label>
        <h:inputText id="offenceId" value="#{managedBean.ownerRefById.ownerId}" styleClass="input-text"/>
         <h:commandButton id="searchButton" value="Search" styleClass="button" style="font-size:15px"
                         action="#{managedBean.getownersById}"/>                    
    </div>
    </h:form>
  
  
  
  
 <af:form id="f1" binding="#{backing_viewAllOwnerDetails.f1}">
      <h:dataTable value="#{managedBean.ownersListRefID}" var="owners"
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
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_viewOwnerById--%>