<%-- 
    Document   : index
    Created on : 12.6.2018, 19:52:42
    Author     : robot
    <%@page import static="org.apache.commons.codec.digest.MessageDigestAlgorithms.SHA_224"%>
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
            
            
            String DbUser = conn.getName();
            String DbPass = conn.getPass();
            
            /** String SHA1Pass = DigestUtils.sha1Hex(DBPass); **/
          
            
            
                      
            if (DbUser.equals(User) && DbPass.equals(passwd) )  {
             %>
             <h1>Soutěž BenePlus</h1>
             <table class="blueTable">
                 <thead>
                     <tr>
                         <th>popis</th>
                         <th>počet</th>
                     </tr>
                 </thead>
                 <tbody>
                     <tr>
                         <td>Aktuální stav k</td>
                         <td>
                             <% out.print(date); %>
                         </td>
                     </tr>
                     <tr>
                         <td>
                        <%
                            out.print("Aktuální počet zaregistrovaných čísel ");
                        %> 
                         </td>
                         <td>
                             <%
                                 out.print(conn.getCount());
                             %>
                         </td>
                     </tr>
                     <tr>
                         <td>
                        <%
                            out.print("Počet zaregistrovaných čísel za včerejší den ");
                        %>
                         </td>
                         <td>
                             <% out.print(conn.getCountYesterday()); %>
                         </td>
                     </tr>
                     <tr>
                         <td>
                        <%
                            out.print("Aktuální počet zaregistrovaných čísel za poslední den (počítáno od půlnoci)");
                        %>   
                         </td>
                         <td>
                             <% out.print(conn.getCountToday()); %>
                         </td>
                     </tr>
                     <tr>
                         <td>
                        <%
                            int result = conn.getCount() + conn.getCountArchive();
                            out.print("Aktuální počet <b>VŠECH</b> zaregistrovaných čísel: ");
                        %>   
                         </td>
                         <td>
                             <% out.print(result); %>
                         </td>
                     </tr>
                 </tbody>
                 
             </table>

            <% } else { %>
            <H3>Přístup odmítnut <a href="/index.jsp">Zkusti znovu</H3>
            <% 
               } 
            %> 
        
            
            
    </body>
</html>
        
        <%--
            <body>
        
        --%>