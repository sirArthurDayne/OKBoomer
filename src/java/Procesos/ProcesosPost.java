/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;


import Entidades.Post;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author John
 */
public class ProcesosPost {
    
    Connection conn;
    
    public ProcesosPost(){
        try{
            Class.forName("org.mariadb.jdbc.Driver");
            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/okboomer", "root", "root");
        }catch(SQLException e){
             System.out.println("Error al conectar: " + e);
        }
        catch(ClassNotFoundException ex){
             System.out.println("Error al registrar el driver de MySQL: " + ex);
        }
    }
    
    public int GuardarPost(Post post){
        int resultado = 0;
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO post(author_id,title,description,image,likes)";
                   query += "VALUES('"+post.getAuthorID()+"','"+post.getTitle()+"','"+post.getDescription()+"','"+post.getImage()+"','"+post.getLikes()+"')";
           
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch(Exception w){
            System.out.println("Error al insertar: " + w);
        }
        
        return 0;
    }
    
    public int NuevoPost(Post post, String user_name){
        int resultado = 0;
        
        try{
            ProcesosPost pPost = new ProcesosPost();
            Statement stmt = conn.createStatement();
            String query = "SELECT user_id FROM user where user_name = " + "'" + user_name + "'";
            ResultSet result = stmt.executeQuery(query);
        while(result.next()){                
            //Set user_id inside post object
            post.setAuthorID(result.getInt("user_id"));
            resultado = pPost.GuardarPost(post);
            return resultado;
        }
        result.close();
        stmt.close();
        conn.close();
        }
        catch(Exception w){
            System.out.println("Error al insertar: " + w);
        }
        
        return resultado;
    }
    
    
    public List<Post> ConsultarData(){
        List<Post> posts = new ArrayList<Post>();
        try{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM post";
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Post post = new Post();
                /*
                private int PostID;
                private String Created_At;
                private int AuthorID;
                private String Title;
                private String Description;
                private String Image;
                private int Likes;
                */
                
                post.setPostID(result.getInt("post_id"));
                post.setAuthorID(result.getInt("author_id"));
                post.setTitle(result.getString("title"));
                post.setDescription(result.getString("description"));
                post.setImage(result.getString("image"));
                post.setLikes(result.getInt("likes"));
                post.setCreated_At(result.getString("created_at"));
                
                posts.add(post);
                
            }
            
            result.close();
            stmt.close();
            conn.close();
            return posts;
            
        }catch(Exception e){
            System.out.println("ERROR"+ e.getMessage().toString());
        }
        return posts;
    }
    
    
}
