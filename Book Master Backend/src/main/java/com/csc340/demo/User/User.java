//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.csc340.demo.User;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class User {
    @Id
    @GeneratedValue(
            strategy = GenerationType.IDENTITY
    )
    public int userId;
    @Column(
            nullable = false
    )
    private String name;
    @Column(
            nullable = false
    )
    private String email;
    @Column(
            nullable = false
    )
    private String username;
    @Column(
            nullable = false
    )
    private String password;
    @Column(
            nullable = false
    )
    private String setType;

    @Column(nullable = true)
    private String profileImage;

    public User() {
    }

    public User(String name, String email, String username, String password, String setType, String profileImage) {
        this.name = name;
        this.email = email;
        this.username = username;
        this.password = password;
        this.setType = setType;
        this.profileImage = profileImage;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSetType() {
        return this.setType;
    }

    public void setSetType(String setType) {
        this.setType = setType;
    }

    public String getProfileImage(){
        return profileImage;
    }

    public void setProfileImage(String profileImage){
        this.profileImage = profileImage;

    }


}
