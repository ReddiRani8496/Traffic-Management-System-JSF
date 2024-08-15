<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<f:view>
  <html>
    <head>
      <meta http-equiv="Content-Type"
            content="text/html; charset=windows-1252"/>
     <title>Login</title>

    <style type="text/css">
      header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: White;
            margin-left:30.0pt;
        }
        form{
         align-items: center;
          display: block;
          position: relative;
          /*width: 120px;*/
         left:450.0pt;
          top:83.0pt;
          bottom:50.0pt; 
         border-radius: 5px;
         background-color: #0A0D36;
         padding: 25px 25px;
         width: 30%;
        }
        input{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            background-color:#0E1D3E;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        label,h2{
            color:White;
        }
        .centerButton{
    background-color: #4CAF50;
  color: white ;
  font-size:medium;
  padding: 14px 30px;
  margin: 10px 0 10px 120px;
  width:30%;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input{
    color:white;
}
input:hover{
    background-color:white;
    color:black;
}
      #image {
            width: 100%;
            height: 90vh;
            margin-top:25.0pt;
            background-image: url("https://media.istockphoto.com/id/985174204/photo/drone-shot-of-10-110-interchange-at-sunset.jpg?s=1024x1024&w=is&k=20&c=xbcgN7M62cvQ_FT_3StBIgAq2zeAwjifbNGlk3dhqsk=");
            background-size: 100vw 100vh;
            background-color: #454A4F;
            background-repeat: no-repeat;
        }
        button[type=submit]:hover,button[type=button]:hover,.centerButton:hover {
    background-color: #45a049;
}
</style>
    </head>
    <body>
     
<div id="image">
<h:form>
<h2>Traffic Management System</h2>
          <h2><u>Login</u></h2>
<h:outputLabel for="userId">UserId <span class="mandatory">*</span>:</h:outputLabel>
<h:inputText id="userId"  required="true" value="#{managedBean.username}"/>
<h:outputLabel for="password">Password <span class="mandatory">*</span>:</h:outputLabel>
<h:inputSecret id="password"  required="true" value="#{managedBean.password}"/>
          <h:commandButton value="Login" id="cb1"
                           action="#{managedBean.login}"/>
        </h:form>
</div>
    </body>
  </html>
</f:view>
<%-- oracle-jdev-comment:auto-binding-backing-bean-name:backing_welcomerto--%>
<%-- 
  oracle-jdev-comment:preferred-managed-bean-name:managedBean
--%>