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
public class Post {

    
    private int PostID;
    private String Created_At;
    private int AuthorID;
    private String Title;
    private String Description;
    private String Image;
    private int Likes;
    
    /**
     * @return the PostID
     */
    public int getPostID() {
        return PostID;
    }

    /**
     * @param PostID the PostID to set
     */
    public void setPostID(int PostID) {
        this.PostID = PostID;
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

    /**
     * @return the AuthorID
     */
    public int getAuthorID() {
        return AuthorID;
    }

    /**
     * @param AuthorID the AuthorID to set
     */
    public void setAuthorID(int AuthorID) {
        this.AuthorID = AuthorID;
    }

    /**
     * @return the Title
     */
    public String getTitle() {
        return Title;
    }

    /**
     * @param Title the Title to set
     */
    public void setTitle(String Title) {
        this.Title = Title;
    }

    /**
     * @return the Description
     */
    public String getDescription() {
        return Description;
    }

    /**
     * @param Description the Description to set
     */
    public void setDescription(String Description) {
        this.Description = Description;
    }

    /**
     * @return the Image
     */
    public String getImage() {
        return Image;
    }

    /**
     * @param Image the Image to set
     */
    public void setImage(String Image) {
        this.Image = Image;
    }

    /**
     * @return the Likes
     */
    public int getLikes() {
        return Likes;
    }

    /**
     * @param Likes the Likes to set
     */
    public void setLikes(int Likes) {
        this.Likes = Likes;
    }
    
    
    
    
}
