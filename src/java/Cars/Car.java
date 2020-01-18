/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cars;

/**
 *
 * @author Mustapha Abdelaziz
 */
public class Car {
    private int id;
    private String brand;
    private String color;
    private String carbural;
    private int kilom;
    private int price;
    private String state;
    private String pictureURL;

   

    public Car(int id, String brand, String color, String carbural, int kilom, int price, String state, String pictureURL) {
        this.id = id;
        this.brand = brand;
        this.color = color;
        this.carbural = carbural;
        this.kilom = kilom;
        this.price = price;
        this.state = state;
        this.pictureURL = pictureURL;
    }

    public Car(String brand, String color, String carbural, int kilom, int price, String state, String pictureURL) {
        this.brand = brand;
        this.color = color;
        this.carbural = carbural;
        this.kilom = kilom;
        this.price = price;
        this.state = state;
        this.pictureURL = pictureURL;
    }

    public Car() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCarbural() {
        return carbural;
    }

    public void setCarbural(String carbural) {
        this.carbural = carbural;
    }

    public int getKilom() {
        return kilom;
    }

    public void setKilom(int kilom) {
        this.kilom = kilom;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

     public String getPictureURL() {
        return pictureURL;
    }

    public void setPictureURL(String pictureURL) {
        this.pictureURL = pictureURL;
    }

    @Override
    public String toString() {
        return "Car{" + "brand=" + brand + ", color=" + color + ", carburant=" + carbural + ", kilom=" + kilom + ", price=" + price + ", state=" + state +'}';
    }
    
    
    
}
