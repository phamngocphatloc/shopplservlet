/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entry;

import java.util.List;

/**
 *
 * @author exnpt
 */
public class order {
    private int id;
    private String status;
    private List<item> listitem;

    public order() {
    }

    public order(int id, String status, List<item> listitem) {
        this.id = id;
        this.status = status;
        this.listitem = listitem;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<item> getListitem() {
        return listitem;
    }

    public void setListitem(List<item> listitem) {
        this.listitem = listitem;
    }
    
    
    
}
