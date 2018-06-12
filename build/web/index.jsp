<%-- 
    Document   : index
    Created on : 12.6.2018, 19:52:42
    Author     : robot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p class="stav">Aktuální stav k: <%= date %></p>
        <span class="stav-count"> 
            <%
                out.print("Aktuální počet zaregistrovaných čísel: "+ conn.getCount());
            %>   
        </span>
        <span class="stav-count-archive"> 
            <%
                int result = conn.getCount() + conn.getCountArchive();
                out.print("Aktuální počet <b>VŠECH</b> zaregistrovaných čísel: "+ result);
            %>   
        </span>
    <body>