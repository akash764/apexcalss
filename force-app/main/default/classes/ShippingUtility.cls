public class ShippingUtility {
    decimal shippingCost;
    public decimal calculateShipping(decimal weight) {
        shippingCost = weight * 50;
        return shippingCost;
    }
    public decimal calculateShipping(decimal weight,Boolean isExpress){
        if(isExpress == True){
           shippingCost = weight * 50 + 100;
            return shippingCost;
        }
        else{
            return ShippingCost;
        }
    }
    public decimal calculateShipping(decimal weight, boolean isVIP, decimal distance){
        if(isVIP == True){
            shippingCost = (weight * 50 + distance * 10) * 0.9;
            return shippingCost;
        }
        else{
            return weight * 50;
        }
    }
    public string calculateShipping(decimal weight, decimal totalAmount){
        if(totalAmount >= 5000){
            shippingcost= 0;
            return 'Your Shipping cost is o';
        }
        else{
            return 'Your Shipping Cost is'+  shippingCost;
        }
    }
    

}