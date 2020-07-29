<%-- 
    Document   : handlefriends
    Created on : Jul 29, 2020, 4:57:57 AM
    Author     : John
--%>

<%@page import="Procesos.ProcesosRelationship"%>
<%@page import="Entidades.Relationship"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getParameterMap().containsKey("action")){
        else if{
                }
    }
    

        
    //response.setStatus(response.SC_MOVED_TEMPORARILY);
    //response.setHeader("Location", "profile.jsp");
    
    /*
    String email= request.getParameter("new_email");
    String password = request.getParameter("new_password");
    String avatar = request.getParameter("avatar");
    
    //debug
    System.out.println("[DBG]" + email);
    System.out.println("[DBG]" + password);
    System.out.println("[DBG]" + avatar);
    //ofici
    
    User new_user = new User();
    new_user.setUser(email);
    new_user.setPassword(password);
    new_user.setProfilePic(avatar);
    
    ProcesosUser pUser = new ProcesosUser();
    
    int its_saved = pUser.GuardarUser(new_user);
    
    if (its_saved != 0) System.out.println("[+] Nuevo Usuario registrado en base de datos: " + email);
    else System.out.println("[x] Algo salio mal. No se pudo guardar");
        
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "index.html");
    
    
    
    //debug
    System.out.println("[DBG]" + email);
    System.out.println("[DBG]" + password);
    //

    ProcesosUser pUser = new ProcesosUser();
    
    if(pUser.LoginUsuario(email, password)){
        System.out.println("[+] WELCOM WELCOM");
    }
    else{
        System.out.println("[-] Sad Life, no estas en la base de datos");
    }
    
    
    
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "home.jsp"); 
    */
%>