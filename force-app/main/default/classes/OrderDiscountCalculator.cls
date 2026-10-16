public class OrderDiscountCalculator {
    // Calculate final amount after discount
    public static Decimal calculateFinalAmount(Decimal orderAmount, String customerType, String promoCode) {
        if (orderAmount <= 0) return 0;
        
        Decimal discount = 0;
        
        // Base discount based on order amount
        if (orderAmount >= 10000) {
            discount += 20;
        } else if (orderAmount >= 5000) {
            discount += 10;
        } else if (orderAmount >= 1000) {
            discount += 5;
        }
        
        // Additional discount for VIP/Premium customers
        if (customerType != null) {
            if (customerType.toLowerCase() == 'vip') {
                discount += 5;
            } else if (customerType.toLowerCase() == 'premium') {
                discount += 3;
            }
        }
        
        // Extra discount for promo code
        if (promoCode != null) {
            if (promoCode.toUpperCase() == 'SUMMER10') {
                discount += 10;
            } else if (promoCode.toUpperCase() == 'WELCOME5') {
                discount += 5;
            }
        }
        
        // Maximum discount limit
        if (discount > 50) {
            discount = 50;
        }
        
        // Calculate final amount
        Decimal finalAmount = orderAmount - (orderAmount * discount / 100);
        return finalAmount.setScale(2);
    }
}