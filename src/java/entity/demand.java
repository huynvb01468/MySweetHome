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
public class demand {
    private int demand_id;
    private String value;

    public demand(int demand_id, String value) {
        this.demand_id = demand_id;
        this.value = value;
    }

    public demand() {
    }

    public int getDemand_id() {
        return demand_id;
    }

    public void setDemand_id(int demand_id) {
        this.demand_id = demand_id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
    

    
}
