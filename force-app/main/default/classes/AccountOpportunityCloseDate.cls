public class AccountOpportunityCloseDate {
    static map<Id,Date>oppmap = new map<Id,Date>();
    public static void addoppClosedate(){
        list<AggregateResult>opplist = [select AccountId,max(CloseDate) MaxCloseDate from Opportunity where AccountId!= null group by AccountId];
        for(AggregateResult opp:opplist){
            date closedate = (date)opp.get('MaxCloseDate');
            id accid = (id)opp.get('AccountId');
            oppmap.put(accid,closedate);
        }
        system.debug(oppmap);
    }

}