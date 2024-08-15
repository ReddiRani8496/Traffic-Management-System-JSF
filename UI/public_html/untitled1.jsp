<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1" binding="#{backing_untitled1.d1}">
    <af:form id="f1" binding="#{backing_untitled1.f1}">
      <h:dataTable value="#{managedBean.listOfPendingOffences}" var="list"
                   binding="#{backing_untitled1.dt1}" id="dt1">
        <%-- 
          oracle-jdev-comment:Faces.RI.DT.Class.Key:training.iqgateway.OffenceDetails
        --%>
       
        <h:column id="c7">
          <f:facet name="header">
            <h:outputText value="Offense Date Time"
                          binding="#{backing_untitled1.ot2}" id="ot2"/>
          </f:facet>
          <h:outputText value="#{list.offenseDateTime}" id="ot13"/>
        </h:column>
        <h:column id="c3">
          <f:facet name="header">
            <h:outputText value="Offense Detail Id"
                          binding="#{backing_untitled1.ot3}" id="ot3"/>
          </f:facet>
          <h:outputText value="#{list.offenseDetailId}" id="ot14"/>
        </h:column>
        <h:column id="c4">
          <f:facet name="header">
            <h:outputText value="Penalty Status"
                          binding="#{backing_untitled1.ot4}" id="ot4"/>
          </f:facet>
          <h:outputText value="#{list.penaltyStatus}" id="ot9"/>
        </h:column>
        <h:column id="c2">
          <f:facet name="header">
            <h:outputText value="Place" binding="#{backing_untitled1.ot5}"
                          id="ot5"/>
          </f:facet>
          <h:outputText value="#{list.place}" id="ot12"/>
        </h:column>
        <h:column id="c1">
          <f:facet name="header">
            <h:outputText value="Registrations"
                          binding="#{backing_untitled1.ot6}" id="ot6"/>
          </f:facet>
          <h:outputText value="#{list.registrations.registrationId}" id="ot10"/>
        </h:column>
        <h:column id="c6">
          <f:facet name="header">
            <h:outputText value="Offence Types"
                          binding="#{backing_untitled1.ot7}" id="ot7"/>
          </f:facet>
          <h:outputText value="#{list.offenceTypes.offenseId}" id="ot16"/>
        </h:column>
        <h:column id="c8">
          <f:facet name="header">
            <h:outputText value="Users" binding="#{backing_untitled1.ot8}"
                          id="ot8"/>
          </f:facet>
          <h:outputText value="#{list.users.userId}" id="ot15"/>
        </h:column>
      </h:dataTable>
    </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_untitled1--%>