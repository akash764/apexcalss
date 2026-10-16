public class OpportunityAccount {
    Static map<Id,string>oppmap = new map<Id,string>();
    public static void addOpportunityAccountName(){
        list<Opportunity>oppList = [select Id,Account.Industry from Opportunity where Account.Name!=Null];
        for(Opportunity opp:oppList){
            oppmap.put(opp.Id,opp.Account.Industry);
        }
    }
    public static void display(){
        for(id oppid:oppmap.keySet()){
            system.debug('=======================');
            system.debug('Opportunity Id: '+oppid);
            system.debug('Opportunity Account Industry: '+oppmap.get(oppid));
            system.debug('=======================');
        }    
    }

}