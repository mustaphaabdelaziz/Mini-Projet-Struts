<%-- 
    Document   : test.jsp
    Created on : Jan 13, 2020, 7:29:07 PM
    Author     : Mustapha Abdelaziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

    <html>
    <head>
    <link rel="stylesheet" type="text/css" href="bootstrap.css">
    </head>
    <body>
        <h2>Calcul simple </h2>
        <s:form method = "post" action="rsd">
            <s:textfield  name="valeur"  label="Valeur "/>
            <s:textfield  name="indice"   label="Indice (%) "/>
	       <s:submit value="Calculer"/>
        </s:form>
       </body>
     </html>

