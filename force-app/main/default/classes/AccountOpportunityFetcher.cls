public class AccountOpportunityFetcher {
    public static List<Opportunity> getOpportunitiesByAccountName(String accountName) {
        return [
            SELECT Id, Name, Account.Name, StageName 
            FROM Opportunity 
            WHERE Account.Name = :accountName
        ];
    }
}