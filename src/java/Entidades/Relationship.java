/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author John
 */
public class Relationship {
    
    private int Actor1;
    private int Actor2;
    private int State;
    private String Since;
    private String Created_At;
    /**
     * @return the Actor1
     */
    public int getActor1() {
        return Actor1;
    }

    /**
     * @param Actor1 the Actor1 to set
     */
    public void setActor1(int Actor1) {
        this.Actor1 = Actor1;
    }

    /**
     * @return the Actor2
     */
    public int getActor2() {
        return Actor2;
    }

    /**
     * @param Actor2 the Actor2 to set
     */
    public void setActor2(int Actor2) {
        this.Actor2 = Actor2;
    }

    /**
     * @return the State
     */
    public int getState() {
        return State;
    }

    /**
     * @param State the State to set
     */
    public void setState(int State) {
        this.State = State;
    }

    /**
     * @return the Since
     */
    public String getSince() {
        return Since;
    }

    /**
     * @param Since the Since to set
     */
    public void setSince(String Since) {
        this.Since = Since;
    }

    /**
     * @return the Created_At
     */
    public String getCreated_At() {
        return Created_At;
    }

    /**
     * @param Created_At the Created_At to set
     */
    public void setCreated_At(String Created_At) {
        this.Created_At = Created_At;
    }

    
    
}
