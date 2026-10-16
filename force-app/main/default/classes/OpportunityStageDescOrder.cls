public class OpportunityStageDescOrder {
    static list<Opportunity>oppList = new list<Opportunity>();
    public static void OpportunityRecords(){
        list<Opportunity>oppList = [select Name,StageName,Amount from Opportunity where stageName ='Prospecting' OR stageName ='Closed Won' order by Amount Desc];
        for(Opportunity st:oppList){
            system.debug('=======================');
            system.debug(st.Name);
            System.debug(st.StageName);
            system.debug(st.Amount);
            system.debug('=======================');
        }
    }

}