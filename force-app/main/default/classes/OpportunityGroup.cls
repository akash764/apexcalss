public class OpportunityGroup {
    static map<string,list<Opportunity>>groupMap = new map<string,list<Opportunity>>();
    public static map<string, list<Opportunity>> opportunityGroup (list<Opportunity>oppList){
        //map<string,list<Opportunity>>groupMap = new map<string,list<Opportunity>>();
        for(Opportunity opp : oppList){
            if(opp.StageName!=Null){
                if(groupMap.containsKey(opp.StageName)){
                    groupMap.get(opp.StageName).add(opp);
                }
                else{
                    groupMap.put(opp.StageName, new list<Opportunity>{ opp }); 
                }
            }
        }
        return groupMap;
    }
    public static void display(){
        for(string st:groupMap.keySet()){
            system.debug('========================');
            system.debug(st+': '+ groupMap.get(st));
            system.debug('========================');
        }
    }
}