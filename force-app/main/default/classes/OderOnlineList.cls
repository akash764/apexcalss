public class OderOnlineList {
    static list<OnlineOrders>onlineOrderList = new list<OnlineOrders>();
    public static void addList(OnlineOrders ord){
        onlineOrderList.add(ord);
    }
    public static void displayList(){
        for(OnlineOrders ord:onlineOrderList){
            system.debug('Order Id: '+ ord.orderId);
            system.debug('Order Customer Name: '+ ord.customerName);
            system.debug('Order Amount: '+ ord.amount);
        }
    }
    public static void amountOrder(){
        for(OnlineOrders ord:onlineOrderList){
            if(ord.amount > 5000){
                system.debug('Order Above Amount 5000: '+ ord);
            }
        }
    }
    public static void countOrder(){
        integer count=0;
        for(OnlineOrders ord:onlineOrderList){
            if(ord.customerName == 'John'){
                count++;
            }
        }
        system.debug('Total Number of Order Placed By John: ' +count);
    }

}
/*
 * OnlineOrders obj;
obj = new OnlineOrders(001,5000,'Mohan');
OderOnlineList.addList(obj);
obj = new OnlineOrders(002,2000,'Akash');
OderOnlineList.addList(obj);
obj = new OnlineOrders(003,7000,'Kalash');
OderOnlineList.addList(obj);
obj = new OnlineOrders(004,4000,'John');
OderOnlineList.addList(obj);
obj = new OnlineOrders(005,8000,'John');
OderOnlineList.addList(obj);
OderOnlineList.displayList();
OderOnlineList.amountOrder();
OderOnlineList.countOrder();*/