public class SalesOpportunityManager {
    string salesPerson;
    string newOpp;
    static map<string,list<string>>oppMap = new map<string,list<string>>();
    public SalesOpportunityManager(){
        this.SalesPerson=salesPerson;
        this.newOpp=newOpp;
    }
    public static void showOpportunity(string salesPerson){
        for(string st:oppMap.get(salesPerson)){
            system.debug(st);
        }
    }
    public static void addOpportunity(string salesPerson,string newOpp){
        if(oppMap.containsKey(salesPerson)){
            oppMap.get(salesPerson).add(newOpp);
            system.debug(oppMap);
        }
        else{
            oppMap.put(salesPerson,new list<string>{newOpp});
            system.debug(oppMap);
        }
        
    }

}
/*
 * SalesOpportunityManager.addOpportunity('kiran','opp1');
SalesOpportunityManager.addOpportunity('kiran','opp2');
SalesOpportunityManager.addOpportunity('Meena','opp3');
SalesOpportunityManager.showOpportunity('Meena');
*/