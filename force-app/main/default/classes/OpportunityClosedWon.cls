public class OpportunityClosedWon {
    static list<Opportunity>oppList = new list<Opportunity>();
    public static void getClosedWonFirstOpporunity(){
        list<Opportunity>oppList = [select Name from opportunity where StageName ='Closed Won' AND Name!=Null];
        for(Opportunity st:oppList){
            system.debug('================');
            system.debug(st.Name);
            system.debug('================');
        }
    }

}