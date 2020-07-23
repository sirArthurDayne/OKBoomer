/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;


import Entidades.User;
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
            String query = "INSERT INTO users(nombre,apellido,cosa,animal,ciudad)";
                   query += "VALUES('"+user.getUser()+"','"+user.getPassword()+"','"+user.getProfilePic()+"')";
           
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
                
                user.setUserID(result.getInt("id"));
                user.setUser(result.getString("nombre"));
                user.setPassword(result.getString("apellido"));
                user.setProfilePic(result.getString("cosa"));
                user.setCreated_At(result.getString("animal"));
                
                
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
    
}
