/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nguye
 */
public class Customers {
    private String customerId;
    private String name;
    private String username;
    private String password;
    private int gender;
    private String address;

    public Customers() {
    }

    public Customers(String customerId) {
        this.customerId = customerId;
    }

    public Customers(String name, String username, String password, int gender, String address) {
        this.name = name;
        this.username = username;
        this.password = password;
        this.gender = gender;
        this.address = address;
    }

    public Customers(String customerId, String name, String username, String password, int gender, String address) {
        this.customerId = customerId;
        this.name = name;
        this.username = username;
        this.password = password;
        this.gender = gender;
        this.address = address;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
}
