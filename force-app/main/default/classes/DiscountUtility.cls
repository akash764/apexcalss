public class DiscountUtility {
    decimal discountedPrice;
    public void calculateDiscount(decimal price, decimal percent){
        Decimal discountedPrice = price - (price * (percent / 100));
        system.debug('Your Discounted Price is: ' + discountedPrice);
    }
    public Decimal calculateDiscount(Integer price, Integer amount, Boolean isFlat) {
        Decimal discountedPrice;
        if (isFlat == true) {
            discountedPrice = price - amount;
        } else {
            discountedPrice = price;
        }
        System.debug('Flat Discount Price: ' + discountedPrice);
        return discountedPrice;
    }
    
        public Decimal calculateDiscount(Decimal price, Decimal percent, Boolean isVIP) {
    if (isVIP == true) {
        percent = percent + 5;
    }
    Decimal discountedPrice = price - (price * (percent / 100));
    System.debug('VIP Discount Price: ' + discountedPrice);
    return discountedPrice;
}



}