<%-- 
    Document   : friend
    Created on : Jul 28, 2020, 11:41:03 PM
    Author     : John
--%>

<%@page import="Procesos.ProcesosRelationship"%>
<%@page import="Entidades.Relationship"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cookie[] state_cookies = request.getCookies();
    
    String sender = state_cookies[1].getValue();
    String receiver = request.getParameter("friend");
    int state = 1;
    //String image = request.getParameter("image");
    
    //debug
    System.out.println("[DBG]" + sender);
    System.out.println("[DBG]" + receiver);
    //System.out.println("[DBG]" + image);
    
    Relationship new_friendship = new Relationship();
    
    new_friendship.setActor1(Integer.parseInt(sender));
    new_friendship.setActor2(Integer.parseInt(receiver));
    new_friendship.setState(state);
    
    ProcesosRelationship pFriends = new ProcesosRelationship();
    
    pFriends.EnviarAmistad(new_friendship);

        
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