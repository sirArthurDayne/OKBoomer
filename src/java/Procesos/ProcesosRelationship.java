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
            String query = "INSERT INTO relationship(action_user_1,action_user_2,state)";
                   query += "VALUES('"+relationship.getActor1()+"','"+relationship.getActor2()+"','"+relationship.getState()+"','"+relationship.getSince()+"','"+relationship.getCreated_At()+"')";
           
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
            String query = "SELECT * FROM relationship";
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Relationship relationship = new Relationship();
                
                
                relationship.setActor1(result.getInt("action_user_1"));
                relationship.setActor2(result.getInt("action_user_2"));
                relationship.setState(result.getInt("state"));
                relationship.setSince(result.getString("since"));
                relationship.setCreated_At(result.getString("created_at"));

                
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
    
    public List<Relationship> ConsultarData(int user_id){
        List<Relationship> relationships = new ArrayList<Relationship>();
      
        try{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM relationship WHERE action_user_1 != '" + user_id +"'";
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Relationship relationship = new Relationship();
                
                
                relationship.setActor1(result.getInt("action_user_1"));
                relationship.setActor2(result.getInt("action_user_2"));
                relationship.setState(result.getInt("state"));
                relationship.setSince(result.getString("since"));
                relationship.setCreated_At(result.getString("created_at"));

                
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
    
    public int EnviarAmistad(Relationship relationship ){
        int resultado = 0;
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO relationship(action_user_1,action_user_2,state)";
                   query += "VALUES('"+relationship.getActor1()+"','"+relationship.getActor2()+"','"+relationship.getState()+"')";
           
            resultado = smtm.executeUpdate(query);

            return resultado;
        }
        catch(Exception w){
            System.out.println("Error al insertar: " + w);
        }
        return 0;
    }
    
    public int EliminarAmistad(Relationship relationship ){
        int resultado = 0;
        try{
            Statement smtm = conn.createStatement();
            String query = "DELETE FROM relationship where action_user_1 = " + relationship.getActor1() + "and action_user_2 = " + relationship.getActor2() + "'";

            resultado = smtm.executeUpdate(query);
            return resultado;
        }
        catch(Exception w){
            System.out.println("Error al insertar: " + w);
        }
        return 0;
    }
    public List<Relationship> SonFrenesDe(int user_id){
        List<Relationship> relationships = new ArrayList<Relationship>();
      
        try{
            Statement stmt = conn.createStatement();
            String query = "select f1.* from relationship f1 inner join relationship f2 on f1.action_user_1 = f2.action_user_2 and  f1.action_user_2 = f2.action_user_1 WHERE f1.action_user_1 ="+ "'" + user_id +"'";
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                
                Relationship relationship = new Relationship();

                relationship.setActor1(result.getInt("action_user_1"));
                relationship.setActor2(result.getInt("action_user_2"));
                relationship.setState(result.getInt("state"));
                relationship.setSince(result.getString("since"));
                relationship.setCreated_At(result.getString("created_at"));

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
