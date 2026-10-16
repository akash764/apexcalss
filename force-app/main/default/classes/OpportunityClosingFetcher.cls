public class OpportunityClosingFetcher {
    public static List<Opportunity> getOpportunitiesClosingNext30Days() {
        return [
            SELECT Id, Name, CloseDate 
            FROM Opportunity 
            WHERE CloseDate >= TODAY AND CloseDate <= NEXT_N_DAYS:30
        ];
    }
}