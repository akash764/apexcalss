@isTest
private class AccountDataFetcherTest {
    @isTest
    static void testFetchAccountDataInTestContext() {
        Account acc = new Account(Name = 'Acme Corp');
        insert acc;

        Opportunity opp = new Opportunity(
            Name = 'Acme Opp', 
            StageName = 'Prospecting', 
            CloseDate = Date.today().addDays(10), 
            AccountId = acc.Id
        );
        Contact con = new Contact(LastName = 'Smith', AccountId = acc.Id);
        insert new List<SObject>{opp, con};

        Test.startTest();
        AccountDataFetcher.AccountDataWrapper result = AccountDataFetcher.fetchAccountData('Acme Corp');
        Test.stopTest();

        // Opportunities should be fetched
        System.assertEquals(1, result.opportunities.size());
        System.assertEquals('Acme Opp', result.opportunities[0].Name);

        // Contacts should be empty because Test.isRunningTest() evaluated to true
        System.assertEquals(0, result.contacts.size(), 'Contacts should not be fetched in test context');
    }
}