@isTest
private class UserGreetingDiscountTest {
    @isTest
    static void testGetDiscountSalesRep() {
        Profile p = [SELECT Id FROM Profile WHERE Name = 'SalesRep' LIMIT 1];
        User u = new User(
            Alias = 'salesu',
            Email = 'salesrep@test.com',
            EmailEncodingKey = 'UTF-8',
            LastName = 'Testing',
            LanguageLocaleKey = 'en_US',
            LocaleSidKey = 'en_US',
            ProfileId = p.Id,
            TimeZoneSidKey = 'America/Los_Angeles',
            UserName = 'salesrep_test_' + DateTime.now().getTime() + '@test.com'
        );
        
        System.runAs(u) {
            Test.startTest();
            Decimal discount = UserGreetingDiscount.getDiscount();
            Test.stopTest();
            System.assertEquals(50, discount);
        }
    }
    
    @isTest
    static void testGetDiscountStandardUser() {
        Profile p = [SELECT Id FROM Profile WHERE Name = 'Standard User' LIMIT 1];
        User u = new User(
            Alias = 'standu',
            Email = 'standarduser@test.com',
            EmailEncodingKey = 'UTF-8',
            LastName = 'Testing',
            LanguageLocaleKey = 'en_US',
            LocaleSidKey = 'en_US',
            ProfileId = p.Id,
            TimeZoneSidKey = 'America/Los_Angeles',
            UserName = 'standarduser_test_' + DateTime.now().getTime() + '@test.com'
        );
        
        System.runAs(u) {
            Test.startTest();
            Decimal discount = UserGreetingDiscount.getDiscount();
            Test.stopTest();
            System.assertEquals(0, discount);
        }
    }
}