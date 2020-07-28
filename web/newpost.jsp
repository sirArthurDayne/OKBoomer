<%-- 
    Document   : newpost
    Created on : Jul 28, 2020, 1:38:06 PM
    Author     : John
--%>

<%@page import="Procesos.ProcesosPost"%>
<%@page import="Entidades.Post"%>
<%
    
    String title = request.getParameter("post_title");
    String description = request.getParameter("descripcion");
    String image = request.getParameter("image");
    
    //debug
    System.out.println("[DBG]" + title);
    System.out.println("[DBG]" + description);
    System.out.println("[DBG]" + image);
    //
    
    Cookie[] state_cookies = request.getCookies();
    
    Post newPost = new Post();
    
    newPost.setTitle(state_cookies[2].getValue());
    newPost.setTitle(title);
    newPost.setDescription(description);
    newPost.setImage(image);
    
    System.out.println("[OBJ] User_id cookie: " + state_cookies[1].getValue());
    System.out.println("[OBJ] Title: " + newPost.getTitle());
    System.out.println("[OBJ] Description: " + newPost.getDescription());
    System.out.println("[OBJ] Image: " + newPost.getImage());
    
    //Nuevo Post
    
    
    ProcesosPost pPost = new ProcesosPost();
    int its_saved = pPost.NuevoPost(newPost, state_cookies[1].getValue());

    if (its_saved != 0) System.out.println("[+] Nuevo post posteado en posts");
    else System.out.println("[x] Algo salio mal. No se pudo guardar");
    
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "home.jsp");
    
    /*
    String email= request.getParameter("new_email");
    String password = request.getParameter("new_password");
    String avatar = request.getParameter("avatar");
    
    //debug
    System.out.println("[DBG]" + email);
    System.out.println("[DBG]" + password);
    System.out.println("[DBG]" + avatar);
    //
    
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