public class AccountIdOpportunity {
    static map<id,list<Opportunity>>accountidOpportunitymap = new map<id,list<Opportunity>>();
    public static void addAccountIdConntact(){
        list<Opportunity>oppList = [select id,AccountId,Name from Opportunity where AccountId!= Null];
        for(Opportunity con:oppList){
            if(accountidOpportunitymap.containsKey(con.AccountId)){
                accountidOpportunitymap.get(con.AccountId).add(con);
            }
            else{
                accountidOpportunitymap.put(con.AccountId,new list<Opportunity>());
            }
        }
    }
    public static void display(){
        for(id accid:accountidOpportunitymap.keySet()){
            system.debug(accid +':');
            for(Opportunity con:accountidOpportunitymap.get(accid)){
                system.debug(con);
            }
        }
    }


}