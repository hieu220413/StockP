/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Cart {
    private ArrayList<Shoes> cartList = null;

    public Cart() {
        cartList = new ArrayList<>();
    }
    
    public void add(Shoes shoes) {
        cartList.add(shoes);
    }
    
    public void empty() {
        cartList.clear();
    }

    public ArrayList<Shoes> getCartList() {
        return cartList;
    } 

    public void setCartList(ArrayList<Shoes> cartList) {
        this.cartList = cartList;
    }
       
}
