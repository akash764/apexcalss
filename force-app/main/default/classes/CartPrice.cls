public class CartPrice {
    static decimal cartTotal=0;
    public static decimal addItemPrice(decimal price){
        cartTotal = price + cartTotal;
        return cartTotal;
    }

}
//system.debug(CartPrice.addItemPrice(250));
//system.debug(CartPrice.addItemPrice(150));