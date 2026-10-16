@isTest
private class AccountServiceTest {
    @isTest
    static void testSOQLGovernorLimitReset() {
        // Setup: Run queries prior to Test.startTest()
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        
        List<Account> setupFetch = [SELECT Id FROM Account];
        System.assertEquals(1, Limits.getQueries(), 'One SOQL query consumed during setup');

        // Reset limits
        Test.startTest();
        System.assertEquals(0, Limits.getQueries(), 'SOQL query count reset to 0 inside Test.startTest()');

        List<Account> result = AccountService.getAccounts();
        System.assertEquals(1, Limits.getQueries(), 'Only 1 query counted for the service method execution');
        Test.stopTest();

        System.assertEquals(1, result.size());
    }
}