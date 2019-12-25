package vn.edu.nlu.fit.Model;

//import com.sun.corba.se.impl.oa.toa.TOA;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

public class ShoppingCart {

    List<Item> listItem;


    public ShoppingCart() {

        this.listItem = new ArrayList<>();

    }
//    public int setNewId(){
//      return   listItem.get(listItem.size()-1).getId()+1;
//    }
    public double total() {
        double total = 0;
        for (Item item : listItem) {
            total += item.getPrice();
        }
        return total;
    }
    public void updateSize(int index, int quantity){
        for (Item item: listItem) {
            if (listItem.indexOf(item)==index){
                item.setQuantity(quantity);

            }
        }
    }


    public Item isExist(Item item) {

       a:for (int i=0; i < listItem.size(); i++) {
           ArrayList<Topping> a = (ArrayList<Topping>) listItem.get(i).getToppingList();
           ArrayList<Topping> b = (ArrayList<Topping>) item.getToppingList();

            if ((listItem.get(i).getProductId() == item.getProductId()) && (listItem.get(i).getSize().equals(item.getSize()))) {
                if (a == null && b == null){
                    return listItem.get(i);
                }
                if((a == null && b != null)
                        || a != null && b == null
                        || a.size() != b.size()){
                  continue a;
                }

                //to avoid messing the order of the lists we will use a copy
                //as noted in comments by A. R. S.


                if (a.containsAll(b) && b.containsAll(a)){
                    return  listItem.get(i);
                }

            }
        }
        return null;
    }



    public void removeItem(int id) {
       for (int i = 0 ; i<listItem.size(); i++){
           if (i == id){
               listItem.remove(listItem.get(i));
               return;
           }
       }
    }

    public List<Item> getListItem() {
        return listItem;
    }

    public void setListItem(Item item) {
        this.listItem.add(item);
    }

    public static void main(String[] args) {
        ShoppingCart abc = new ShoppingCart();
        Topping top = new Topping("ga", 455);
        Topping top1 = new Topping("ga1", 455);
        Topping top2 = new Topping("ga4", 455);
        ArrayList<Topping> g = new ArrayList<Topping>();
        ArrayList<Topping> g1 = new ArrayList<Topping>();
        ArrayList<Topping> g12 = new ArrayList<Topping>();
        g.add(top);
//        g.add(top1);

//        g1.add(top1);
//        g1.add(top);
        g12.add(top2);
//        abc.setListItem(new Item(1, 2, "huy", "affa", 45, 2, null))
        Item test = new Item();
//        test.setPrice(5656);
        test.setToppingList(g12);
        test.setProductId(2);


        System.out.println(abc.isExist(test)!=null);
    }
}
