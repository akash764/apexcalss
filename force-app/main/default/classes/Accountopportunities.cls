public class Accountopportunities {
    static map<Id,Opportunity>oppMap = new map<Id,Opportunity>([select AccountId,Name,StageName from Opportunity where AccountId!= Null]
                                                              );
    public static void oppStage(){
        for(id accid:oppMap.keySet()){
            if((oppMap.get(accid).StageName == 'Closed Won' || oppMap.get(accid).StageName == 'Closed Lost') && oppMap.get(accid).StageName!=null ){
                system.debug(oppMap.get(accid));
            }
        }
        
    }
    public static void accountRecords(){
        list<Account>accList = [select Id,Name from Account];
        for(Account acc:accList){
            if (oppMap.containsKey(acc.Id) && oppMap.get(acc.Id) != null) {
                system.debug('===================');
                system.debug(oppMap.get(acc.Id).Name);
                system.debug(acc.Name);
                system.debug('===================');
            }
        }
    }
    
}