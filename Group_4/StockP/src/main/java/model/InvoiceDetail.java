/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author nguye
 */
public class InvoiceDetail {
    private Invoice invoice;
    private List<Shoes> shoe;
    private int quantity;
    private int size;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public InvoiceDetail() {
    }

    public InvoiceDetail(Invoice invoice, List<Shoes> shoe) {
        this.invoice = invoice;
        this.shoe = shoe;
    }

    public InvoiceDetail(Invoice invoice, List<Shoes> shoe, int quantity, int size) {
        this.invoice = invoice;
        this.shoe = shoe;
        this.quantity = quantity;
        this.size = size;
    }

    public Invoice getInvoice() {
        return invoice;
    }

    public void setInvoice(Invoice invoice) {
        this.invoice = invoice;
    }

    public List<Shoes> getShoe() {
        return shoe;
    }

    public void setShoe(List<Shoes> shoe) {
        this.shoe = shoe;
    }
    
    
}
