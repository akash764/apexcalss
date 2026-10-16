@isTest
private class TaxUtilityTest {
    @isTest
    static void testCalculateTax() {
        System.assertEquals('No Tax', TaxUtility.calculateTax(null));
        System.assertEquals('No Tax', TaxUtility.calculateTax(0));
        System.assertEquals('300000.00', TaxUtility.calculateTax(1000000));
        System.assertEquals('100000.00', TaxUtility.calculateTax(500000));
        System.assertEquals('25000.00', TaxUtility.calculateTax(250000));
        System.assertEquals('No Tax', TaxUtility.calculateTax(200000));
    }
}