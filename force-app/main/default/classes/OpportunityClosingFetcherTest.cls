@isTest
private class OpportunityClosingFetcherTest {
    @isTest
    static void testGetOpportunitiesClosingNext30Days() {
        Opportunity nearOpp = new Opportunity(Name = 'Closing Soon', StageName = 'Prospecting', CloseDate = Date.today().addDays(15));
        Opportunity farOpp = new Opportunity(Name = 'Closing Later', StageName = 'Prospecting', CloseDate = Date.today().addDays(45));
        insert new List<Opportunity>{nearOpp, farOpp};

        Test.startTest();
        List<Opportunity> result = OpportunityClosingFetcher.getOpportunitiesClosingNext30Days();
        Test.stopTest();

        System.assertEquals(1, result.size());
        System.assertEquals('Closing Soon', result[0].Name);
    }
}