public class OpportunityFetcher {
    public static List<Opportunity> getOpportunitiesByStage(String stageName) {
        return [SELECT Id, Name, StageName, Amount FROM Opportunity WHERE StageName = :stageName];
    }
}