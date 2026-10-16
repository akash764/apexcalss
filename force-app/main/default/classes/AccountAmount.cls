public class AccountAmount {
    static map<Id,Decimal>oppmap = new map<Id,Decimal>();
    public static void addAccount(){
        list<AggregateResult>opplist = [select AccountId,sum(Amount) TotalAmount from Opportunity where Amount!= null group by AccountId];
        for(AggregateResult opp:opplist){
            id accid = (id)opp.get('AccountId');
            decimal amnt = (decimal)opp.get('TotalAmount');
            oppmap.put(accid,amnt);
        }
        system.debug(oppmap);
    }

}