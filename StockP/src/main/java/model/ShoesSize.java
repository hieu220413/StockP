/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nguye
 */
public class ShoesSize {
    private Shoes shoes;
    private Size size;
    private int amount;

    public ShoesSize() {
    }

    public ShoesSize(Shoes shoes, Size size, int amount) {
        this.shoes = shoes;
        this.size = size;
        this.amount = amount;
    }

    public Shoes getShoe() {
        return shoes;
    }

    public void setShoe(Shoes shoe) {
        this.shoes = shoe;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
   
}
