@isTest
private class OpportunityStageUpdaterTest {
    @isTest
    static void testUpdateOpportunityStages() {
        Opportunity eligibleOpp = new Opportunity(Name = 'Eligible', StageName = 'Prospecting', Amount = 20000, CloseDate = Date.today().addDays(10));
        Opportunity wonOpp = new Opportunity(Name = 'Won Opp', StageName = 'Closed Won', Amount = 20000, CloseDate = Date.today().addDays(10));
        insert new List<Opportunity>{eligibleOpp, wonOpp};

        Test.startTest();
        OpportunityStageUpdater.updateOpportunityStages();
        Test.stopTest();

        Opportunity updatedOpp = [SELECT StageName FROM Opportunity WHERE Id = :eligibleOpp.Id];
        System.assertEquals('Qualification', updatedOpp.StageName);
    }
}