<%-- 
    Document   : index
    Created on : 10.6.2018, 9:30:58
    Author     : David Poslt
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        <h1>Soutěž BenePlus</h1>
        
        <div>
            <img src="${pageContext.request.contextPath}/Image/cat-02.svg" />
        </div>
        
            <%-- opravneni --%>
            
        <div>
            <%
                String sso;
                sso = "212437054d";
                
                if (user.GetUserName().equals(sso)) {
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
            <H3>Nemate dostatecna opravneni - Obraďte se na správce systému: <span class = "spravce">Chlebusová, Lenka</span></H3>
            <% } %>
        </div>
        
    </body>
</html>
