public class OpportunityAmountFetcher {
    public static List<Opportunity> getHighValueOpportunities() {
        return [SELECT Id, Name, Amount FROM Opportunity WHERE Amount > 10000];
    }
}