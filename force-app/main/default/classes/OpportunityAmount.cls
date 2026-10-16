public class OpportunityAmount {
    static list<Opportunity>oppList = new list<Opportunity>();
    public static void getOpportunityAmount(integer amount){
        list<Opportunity>oppList = [select Name,Amount from Opportunity where Amount >:amount];
        for(Opportunity st:oppList){
            system.debug('======================');
            system.debug(st.Name);
            system.debug(st.Amount);
            system.debug('======================');
        }
    }

}