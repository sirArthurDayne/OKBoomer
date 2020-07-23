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
public class User {
    
    private int UserID;
    private String User;
    private String Password;
    private String ProfilePic;
    private String Created_At;

    /**
     * @return the UserID
     */
    public int getUserID() {
        return UserID;
    }

    /**
     * @param UserID the UserID to set
     */
    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    /**
     * @return the User
     */
    public String getUser() {
        return User;
    }

    /**
     * @param User the User to set
     */
    public void setUser(String User) {
        this.User = User;
    }

    /**
     * @return the Password
     */
    public String getPassword() {
        return Password;
    }

    /**
     * @param Password the Password to set
     */
    public void setPassword(String Password) {
        this.Password = Password;
    }

    /**
     * @return the ProfilePic
     */
    public String getProfilePic() {
        return ProfilePic;
    }

    /**
     * @param ProfilePic the ProfilePic to set
     */
    public void setProfilePic(String ProfilePic) {
        this.ProfilePic = ProfilePic;
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
