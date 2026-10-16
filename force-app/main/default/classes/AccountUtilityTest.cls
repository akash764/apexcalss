@isTest
private class AccountUtilityTest {
    @isTest
    static void testGetCategory() {
        Account accNull = new Account(Name = 'Acc Null');
        Account accPlat = new Account(Name = 'Acc Plat', AnnualRevenue = 1000000);
        Account accGold = new Account(Name = 'Acc Gold', AnnualRevenue = 500000);
        Account accSilv = new Account(Name = 'Acc Silv', AnnualRevenue = 100000);
        Account accBron = new Account(Name = 'Acc Bron', AnnualRevenue = 50000);
        
        insert new List<Account>{accNull, accPlat, accGold, accSilv, accBron};
        
        Test.startTest();
        System.assertEquals('Unknown', AccountUtility1.getCategory('Acc Null'));
        System.assertEquals('Platinum', AccountUtility1.getCategory('Acc Plat'));
        System.assertEquals('Gold', AccountUtility1.getCategory('Acc Gold'));
        System.assertEquals('Silver', AccountUtility1.getCategory('Acc Silv'));
        System.assertEquals('Bronze', AccountUtility1.getCategory('Acc Bron'));
        System.assertEquals('Unknown', AccountUtility1.getCategory('NonExistent'));
        Test.stopTest();
    }
}