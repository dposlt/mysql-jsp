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
        <link rel="stylesheet" href="css/style.css"
    </head>
    <% 
        
        Date date = new Date();
        DBConnect conn = new DBConnect();
        GetUser user = new GetUser();
        
    %>
    <body>
        
        <h1>Soutěž BenePlus</h1>
        
        
            <%-- opravneni --%>
            
        <div>
            
            <div class="login-card">
                <img src="${pageContext.request.contextPath}/Image/cat-02.svg" />
                <h1>Přihlášení</h1><br>
                
                <form>
                    <input type="text" name="user" placeholder="Username">
                    <input type="password" name="pass" placeholder="Password">
                    <input type="submit" name="login" class="login login-submit" value="login">
                </form>

                
            </div>
           
        
   
            
            <H3>Pro oprávnění se obraďte se na správce systému:<a href="mailto: lenka.chlebusova@moneta.cz"><span class = "spravce"> Chlebusová, Lenka</span></a></H3>
            
        </div>
        
    </body>
</html>