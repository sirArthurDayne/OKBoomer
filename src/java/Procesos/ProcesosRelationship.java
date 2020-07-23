/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;

import Entidades.Relationship;
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
public class ProcesosRelationship {
    Connection conn;
    
    public ProcesosRelationship(){
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
    
    
    public int GuardarRelationship(Relationship relationship){
        int resultado = 0;
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO relationships(action_user_1,action_user_2,approved)";
                   query += "VALUES('"+relationship.getUser_Dom()+"','"+relationship.getUser_Sum()+"','"+relationship.getApproved()+"')";
           
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch(Exception w){
            System.out.println("Error al insertar: " + w);
        }
        return 0;
    }
    
    public List<Relationship> ConsultarData(){
        List<Relationship> relationships = new ArrayList<Relationship>();
      
        try{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM stop";
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Relationship relationship = new Relationship();
                /*
                private String Created_At;
                private int RelId;
                private String User_Dom;
                private String User_Sum;
                private String Approved;
                */
                
                relationship.setRelId(result.getInt("id"));
                relationship.setUser_Dom(result.getString("action_user_1"));
                relationship.setUser_Sum(result.getString("action_user_2"));
                relationship.setApproved(result.getInt("approved"));
                relationship.setCreated_At(result.getString("since"));

                
                relationships.add(relationship);
            }
            result.close();
            stmt.close();
            conn.close();
            
            return relationships;
        }
        catch(Exception e){
            System.out.println("ERROR"+e.getMessage().toString());
        }
        return relationships;
    }

}
