public class AccountIdCase {
    static list<AggregateResult>acclist = [select AccountId,Count(Id) TotalCase from Case where AccountId != null group by AccountId having Count(Id) > 2];
    public static void display(){
        for(AggregateResult acc:acclist){
            Id Accid = (id)acc.get('AccountId');
            integer count = (integer)acc.get('TotalCase');
            system.debug(Accid);
            system.debug(Count);
        }
    }

}