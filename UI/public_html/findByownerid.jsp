<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1" binding="#{backing_findByownerid.d1}">
  
  
  
  
  
    <af:form id="f1" binding="#{backing_findByownerid.f1}">
      <h:dataTable value="#{managedBean.ownersListRefID}" var="own"
                   binding="#{backing_findByownerid.dt1}" id="dt1">
        <%-- 
          oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.Owners
        --%>
        <h:column id="c3">
          <f:facet name="header">
            <h:outputText value="Address" binding="#{backing_findByownerid.ot1}"
                          id="ot1"/>
          </f:facet>
          <h:outputText value="#{own.address}" id="ot15"/>
        </h:column>
        <h:column id="c8">
          <f:facet name="header">
            <h:outputText value="Dateofbirth"
                          binding="#{backing_findByownerid.ot2}" id="ot2"/>
          </f:facet>
          <h:outputText value="#{own.dateofbirth}" id="ot19"/>
        </h:column>
        <h:column id="c2">
          <f:facet name="header">
            <h:outputText value="First Name"
                          binding="#{backing_findByownerid.ot3}" id="ot3"/>
          </f:facet>
          <h:outputText value="#{own.firstName}" id="ot16"/>
        </h:column>
        <h:column id="c6">
          <f:facet name="header">
            <h:outputText value="Gender" binding="#{backing_findByownerid.ot4}"
                          id="ot4"/>
          </f:facet>
          <h:outputText value="#{own.gender}" id="ot18"/>
        </h:column>
        <h:column id="c4">
          <f:facet name="header">
            <h:outputText value="Id Type" binding="#{backing_findByownerid.ot5}"
                          id="ot5"/>
          </f:facet>
          <h:outputText value="#{own.idType}" id="ot20"/>
        </h:column>
        <h:column id="c10">
          <f:facet name="header">
            <h:outputText value="Last Name"
                          binding="#{backing_findByownerid.ot6}" id="ot6"/>
          </f:facet>
          <h:outputText value="#{own.lastName}" id="ot13"/>
        </h:column>
        <h:column id="c11">
          <f:facet name="header">
            <h:outputText value="Occupation"
                          binding="#{backing_findByownerid.ot7}" id="ot7"/>
          </f:facet>
          <h:outputText value="#{own.occupation}" id="ot14"/>
        </h:column>
        <h:column id="c9">
          <f:facet name="header">
            <h:outputText value="Owner Id"
                          binding="#{backing_findByownerid.ot8}" id="ot8"/>
          </f:facet>
          <h:outputText value="#{own.ownerId}" id="ot22"/>
        </h:column>
        <h:column id="c5">
          <f:facet name="header">
            <h:outputText value="Phone Number"
                          binding="#{backing_findByownerid.ot9}" id="ot9"/>
          </f:facet>
          <h:outputText value="#{own.phoneNumber}" id="ot21"/>
        </h:column>
        <h:column id="c7">
          <f:facet name="header">
            <h:outputText value="Pincode"
                          binding="#{backing_findByownerid.ot10}" id="ot10"/>
          </f:facet>
          <h:outputText value="#{own.pincode}" id="ot17"/>
        </h:column>
        <h:column id="c1">
          <f:facet name="header">
            <h:outputText value="Registrations List"
                          binding="#{backing_findByownerid.ot11}" id="ot11"/>
          </f:facet>
          <h:outputText value="#{own.registrationsList}" id="ot12"/>
        </h:column>
      </h:dataTable>
    </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_findByownerid--%>