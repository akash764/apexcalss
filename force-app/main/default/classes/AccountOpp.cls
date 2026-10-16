public class AccountOpp {
    static map<id,integer>oppmap = new map<id,integer>();
    public static void addAccountOpp(){
        list<AggregateResult>opplist = [select AccountId,count(id) TotalOpp from Opportunity where AccountId!=null group by AccountId];
        for(AggregateResult opp:opplist){
            id accid = (id)opp.get('AccountId');
            integer count = (integer)opp.get('Totalopp');
            oppmap.put(accid,count);
        }
    }
    public static void display(){
        for(id accountid:oppmap.keySet()){
            system.debug(accountid +':');
            system.debug('Total Opportuniy Count: '+ oppmap.get(accountid));
        }
    }

}