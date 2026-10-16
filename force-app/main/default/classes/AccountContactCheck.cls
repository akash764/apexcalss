public class AccountContactCheck {
    static map<id,integer>conmap = new map<id,integer>();
    public static void addAccountContact(){
        list<AggregateResult>conlist = [select AccountId,count(id) TotalContacts from Contact where AccountId!=null group by AccountId];
        for(AggregateResult con:conlist){
            id accid = (id)con.get('AccountId');
            integer count = (integer)con.get('TotalContacts');
            conmap.put(accid,count);
        }
    }
    public static void display(id Accid){
        for(id accountId:conmap.keySet()){
            if(Accid == accountId){
                system.debug(accountId);
                system.debug(conmap.get(accountId));
            }
            else{
                system.debug('Account Id Not exist OR Account Id dont Have Contact');
            }
        }
        
    }

}