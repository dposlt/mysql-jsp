<%-- 
    Document   : index
    Created on : 10.6.2018, 9:30:58
    Author     : David Poslt
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="SoutezBene.Hello"%>
<%@page import="SoutezBene.DBConnect"%>
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
        
        Hello pozdrav = new Hello();
    %>
    <body>
        
        <h1>Soutěž BenePlus</h1>
        <p class="stav">Aktuální stav k: <%= date %></p>
        <div>
            <img src="${pageContext.request.contextPath}/Image/cat-02.svg" />
        </div>
        
        <div>
            
            <%-- <%= conn.getData() %>
            <%= conn.getCount() %> --%>
            <%
                out.print(conn.getData());
            %>
            
        </div>
    </body>
</html>
