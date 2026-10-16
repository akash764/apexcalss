@isTest
private class OpportunityAmountFetcherTest {
    @isTest
    static void testGetHighValueOpportunities() {
        Opportunity highOpp = new Opportunity(Name = 'High Value', StageName = 'Prospecting', Amount = 15000, CloseDate = Date.today().addDays(10));
        Opportunity lowOpp = new Opportunity(Name = 'Low Value', StageName = 'Prospecting', Amount = 5000, CloseDate = Date.today().addDays(10));
        insert new List<Opportunity>{highOpp, lowOpp};

        Test.startTest();
        List<Opportunity> result = OpportunityAmountFetcher.getHighValueOpportunities();
        Test.stopTest();

        System.assertEquals(1, result.size());
        System.assertEquals('High Value', result[0].Name);
    }
}