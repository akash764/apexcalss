@isTest
private class ShippingCalculatorTest {
    
    @isTest
    static void testWeightTiersWithLocalDestination() {
        Decimal zeroWeight = ShippingCalculator.calculateShipping(0, 'local');
        Decimal tier1 = ShippingCalculator.calculateShipping(3, 'local');
        Decimal tier2 = ShippingCalculator.calculateShipping(8, 'local');
        Decimal tier3 = ShippingCalculator.calculateShipping(15, 'local');
        Decimal tier4 = ShippingCalculator.calculateShipping(25, 'local');
        
        System.assertEquals(0, zeroWeight, 'Weight <= 0 should cost 0');
        System.assertEquals(50, tier1, 'Weight <= 5 should cost 50');
        System.assertEquals(100, tier2, 'Weight <= 10 should cost 100');
        System.assertEquals(200, tier3, 'Weight <= 20 should cost 200');
        System.assertEquals(500, tier4, 'Weight > 20 should cost 500');
    }
    
    @isTest
    static void testInternationalDestination() {
        Decimal intlCharge = ShippingCalculator.calculateShipping(5, 'US');
        
        System.assertEquals(200, intlCharge, 'Non-local destination should add 150 extra charge');
    }
    
    @isTest
    static void testNullDestination() {
        Decimal nullDestCharge = ShippingCalculator.calculateShipping(5, null);
        
        System.assertEquals(50, nullDestCharge, 'Null destination should not add extra charge');
    }
}