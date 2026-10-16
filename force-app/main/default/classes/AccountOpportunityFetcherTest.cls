@isTest
private class AccountOpportunityFetcherTest {
    @isTest
    static void testGetOpportunitiesByAccountName() {
        Account acc = new Account(Name = 'Acme Corp');
        insert acc;

        Opportunity opp = new Opportunity(Name = 'Acme Deal', StageName = 'Prospecting', CloseDate = Date.today().addDays(10), AccountId = acc.Id);
        insert opp;

        Test.startTest();
        List<Opportunity> result = AccountOpportunityFetcher.getOpportunitiesByAccountName('Acme Corp');
        Test.stopTest();

        System.assertEquals(1, result.size());
        System.assertEquals('Acme Deal', result[0].Name);
    }
}