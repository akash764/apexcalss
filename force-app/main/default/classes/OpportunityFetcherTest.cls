@isTest
private class OpportunityFetcherTest {
    @isTest
    static void testGetOpportunitiesByStage() {
        Opportunity opp1 = new Opportunity(Name = 'Test Opp 1', StageName = 'Prospecting', CloseDate = Date.today().addDays(10));
        Opportunity opp2 = new Opportunity(Name = 'Test Opp 2', StageName = 'Closed Won', CloseDate = Date.today().addDays(10));
        insert new List<Opportunity>{opp1, opp2};

        Test.startTest();
        List<Opportunity> result = OpportunityFetcher.getOpportunitiesByStage('Prospecting');
        Test.stopTest();

        System.assertEquals(1, result.size());
        System.assertEquals('Test Opp 1', result[0].Name);
    }
}