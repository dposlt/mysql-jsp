<%-- 
    Document   : index
    Created on : 12.6.2018, 19:52:42
    Author     : robot
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="SoutezBene.DBConnect"%>
<%@page import="SoutezBene.GetUser"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soutěž BenePlus</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
        <% 
        
        Date date = new Date();
        DBConnect conn = new DBConnect();
        GetUser user = new GetUser();
       
        
        %>  

    <body>
            <% 
            String User = request.getParameter("user");
            String passwd = request.getParameter("pass");
            
            String DbUser = conn.getAccess();
           
            
                      
            if (DbUser.equals(User)) {
             %>
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
            
            <% } else { %>
            <H3>Přístup odmítnut <a href="/login.jsp">Zkusti znovu</H3>
            <% 
               } 
            %> 
        
            
            
    </body>
</html>
        
        <%--
            <body>
        
        --%>