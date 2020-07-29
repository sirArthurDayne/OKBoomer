/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;


import Entidades.Post;
import Entidades.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 *
 * @author John
 */
public class ProcesosUser {
    
    Connection conn;
    
    public ProcesosUser(){
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
    
    public int GuardarUser(User user){
        int resultado = 0;
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO user(user_name,email,password,profile_picture)";
                   query += "VALUES('"+user.getUser()+"','"+user.getEmail()+"','"+user.getPassword()+"','"+user.getProfilePic()+"')";
           
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch(Exception w){
            System.out.println("Error al insertar: " + w);
        }
        return 0;
    }
    
    public List<User> ConsultarData(){
        List<User> users = new ArrayList<User>();
      
        try{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM user";
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                User user = new User();
                
                user.setUserID(result.getInt("user_id"));
                user.setUser(result.getString("user_name"));
                user.setEmail(result.getString("email"));
                user.setPassword(result.getString("password"));
                user.setProfilePic(result.getString("profile_picture"));
                user.setCreated_At(result.getString("created_at"));
                
                
                users.add(user);
            }
            result.close();
            stmt.close();
            conn.close();
            
            return users;
        }
        catch(Exception e){
            System.out.println("ERROR"+e.getMessage().toString());
        }
        return users;
    }
    public User ConsultarData(int user_id){
        User user = new User();
        
        try{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM user WHERE user_id = '"+ user_id + "'" ;
            ResultSet result = stmt.executeQuery(query);
            result.first();
            
            user.setUserID(result.getInt("user_id"));
            user.setUser(result.getString("user_name"));
            user.setEmail(result.getString("email"));
            user.setPassword(result.getString("password"));
            user.setProfilePic(result.getString("profile_picture"));
            user.setCreated_At(result.getString("created_at"));

            result.close();
            stmt.close();
            conn.close();
            
            return user;
        }
        catch(Exception e){
            System.out.println("ERROR de Consulta: "+e.getMessage().toString());
        }
        return user;
    }
    
    public int LoginUsuario(String email, String password){
        
        boolean logged = false; 
        
        try{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM user";
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                User user = new User();
                
                user.setUserID(result.getInt("user_id"));
                user.setEmail(result.getString("email"));
                user.setPassword(result.getString("password"));
                
                System.out.println("[CMP DB] " + user.getEmail() + " [CMP POST] " + email + " Equal: " + email.equals(user.getEmail()));
                System.out.println("[Query DB] " + user.getPassword()+ " [CMP POST] " + password + " Equal: " + password.equals(user.getPassword()));
                
                if(email.equals(user.getEmail()) && password.equals(user.getPassword())){
                    System.out.println("[+] Autentificado. Usuario: " + user.getEmail() + " UserID: " + user.getUserID());
                    logged = true;
                    
                    stmt.close();
                    return user.getUserID();
                }
            }
            
            System.out.println("esta saliendo.");
            
            stmt.close();
            return 0;
        }
        catch(Exception e){
            System.out.println("ERROR"+e.getMessage().toString());
        }
        return 0;
    }
    
    
}
