/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entity;

/**
 *
 * @author NguyenVan
 */
public class Post {
    private int post_id;
    private int user_id;
    private int landLost_id;
    private int type_post;
    private int type_demand;
    private int timeOut;
    private String date;
    private String statusPost;

    public Post() {
    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getLandLost_id() {
        return landLost_id;
    }

    public void setLandLost_id(int landLost_id) {
        this.landLost_id = landLost_id;
    }

    public int getType_post() {
        return type_post;
    }

    public void setType_post(int type_post) {
        this.type_post = type_post;
    }

    public int getType_demand() {
        return type_demand;
    }

    public void setType_demand(int type_demand) {
        this.type_demand = type_demand;
    }

    public int getTimeOut() {
        return timeOut;
    }

    public void setTimeOut(int timeOut) {
        this.timeOut = timeOut;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatusPost() {
        return statusPost;
    }

    public void setStatusPost(String statusPost) {
        this.statusPost = statusPost;
    }
}
