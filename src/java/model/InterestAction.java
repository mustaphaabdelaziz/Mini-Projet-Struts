/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Mustapha Abdelaziz
 */
public class InterestAction {

    private double valeur, indice, resultat;

    public double getValeur() {
        return valeur;
    }

    public void setValeur(double valeur) {
        this.valeur = valeur;
    }

    public double getIndice() {
        return indice;
    }

    public void setIndice(double indice) {
        this.indice = indice;
    }

    public double getResultat() {
        return resultat;
    }

    public String execute() {
        resultat = valeur * indice / 100;
        if (resultat > 10) {
            return "bon";
        } else {
            return "mauvais";
        }
    }
   

}
