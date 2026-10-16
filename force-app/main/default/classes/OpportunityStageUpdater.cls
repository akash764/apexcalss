public class OpportunityStageUpdater {
    public static void updateOpportunityStages() {
        List<Opportunity> oppsToUpdate = [
            SELECT Id, StageName, Amount 
            FROM Opportunity 
            WHERE Amount < 50000 
            AND StageName NOT IN ('Closed Won', 'Closed Lost')
        ];

        for (Opportunity opp : oppsToUpdate) {
            opp.StageName = 'Qualification';
        }

        if (!oppsToUpdate.isEmpty()) {
            update oppsToUpdate;
        }
    }
}