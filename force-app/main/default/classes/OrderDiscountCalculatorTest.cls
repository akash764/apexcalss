@isTest
private class OrderDiscountCalculatorTest {
    
    @isTest
    static void testZeroAndNegativeOrderAmount() {
        Decimal zeroAmount = OrderDiscountCalculator.calculateFinalAmount(0, 'VIP', 'SUMMER10');
        Decimal negativeAmount = OrderDiscountCalculator.calculateFinalAmount(-100, 'VIP', 'SUMMER10');
        
        System.assertEquals(0, zeroAmount, 'Zero order amount should return 0');
        System.assertEquals(0, negativeAmount, 'Negative order amount should return 0');
    }
    
    @isTest
    static void testOrderAmountTiers() {
        Decimal tier10000 = OrderDiscountCalculator.calculateFinalAmount(10000, null, null);
        Decimal tier5000  = OrderDiscountCalculator.calculateFinalAmount(5000, null, null);
        Decimal tier1000  = OrderDiscountCalculator.calculateFinalAmount(1000, null, null);
        Decimal tierLow   = OrderDiscountCalculator.calculateFinalAmount(500, null, null);
        
        System.assertEquals(8000.00, tier10000, 'Amount >= 10000 gets 20% discount');
        System.assertEquals(4500.00, tier5000, 'Amount >= 5000 gets 10% discount');
        System.assertEquals(950.00, tier1000, 'Amount >= 1000 gets 5% discount');
        System.assertEquals(500.00, tierLow, 'Amount < 1000 gets 0% discount');
    }
    
    @isTest
    static void testCustomerTypes() {
        Decimal vipAmount = OrderDiscountCalculator.calculateFinalAmount(1000, 'VIP', null);
        Decimal premiumAmount = OrderDiscountCalculator.calculateFinalAmount(1000, 'premium', null);
        Decimal regularAmount = OrderDiscountCalculator.calculateFinalAmount(1000, 'regular', null);
        
        System.assertEquals(900.00, vipAmount, 'VIP customer gets extra 5% discount');
        System.assertEquals(920.00, premiumAmount, 'Premium customer gets extra 3% discount');
        System.assertEquals(950.00, regularAmount, 'Other customer types get no extra discount');
    }
    
    @isTest
    static void testPromoCodes() {
        Decimal summerPromo = OrderDiscountCalculator.calculateFinalAmount(1000, null, 'SUMMER10');
        Decimal welcomePromo = OrderDiscountCalculator.calculateFinalAmount(1000, null, 'welcome5');
        Decimal invalidPromo = OrderDiscountCalculator.calculateFinalAmount(1000, null, 'INVALID');
        
        System.assertEquals(850.00, summerPromo, 'SUMMER10 code adds 10% discount');
        System.assertEquals(900.00, welcomePromo, 'WELCOME5 code adds 5% discount');
        System.assertEquals(950.00, invalidPromo, 'Invalid promo code adds 0% discount');
    }
    
    @isTest
    static void testMaxDiscountCap() {
        Decimal calculatedAmount = OrderDiscountCalculator.calculateFinalAmount(10000, 'VIP', 'SUMMER10');
        System.assertEquals(6500.00, calculatedAmount, 'Total discount should calculate correctly under 50% cap');
    }
}