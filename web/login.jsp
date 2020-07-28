<%-- 
    Document   : login
    Created on : Jul 27, 2020, 1:27:00 AM
    Author     : John
--%>

<%@page import="Procesos.ProcesosUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String email= request.getParameter("user_email");
    String password = request.getParameter("user_password");
    
    //debug
    System.out.println("[DBG]" + email);
    System.out.println("[DBG]" + password);
    //

    ProcesosUser pUser = new ProcesosUser();
    
    if(pUser.LoginUsuario(email, password)){
        //Logon Cookies
        Cookie user = new Cookie("user", email);
        Cookie logged = new Cookie("logged", "true");
        //Insert Cookies into browser
        response.addCookie( user );
        response.addCookie( logged );
        //Debug
        System.out.println("[+] WELCOM WELCOM");
    }
    else{
        System.out.println("[-] Sad Life, no estas en la base de datos");
    }

    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "home.jsp"); 
%>