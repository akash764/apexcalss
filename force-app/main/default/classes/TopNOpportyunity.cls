public class TopNOpportyunity {
    public static void getTopOpportunity(string statgeName,integer topCount,list<string>feildlist,string orderDirection){
        if(!feildlist.isEmpty()){
            string feild = string.join(feildlist,',');
            string query = 'select '+feild+' from Opportunity where StageName =\''+String.escapeSingleQuotes(statgeName)+'\' order by Amount '+String.escapeSingleQuotes(orderDirection)+' limit '+topCount;
            list<Opportunity>opplist = database.query(query);
            system.debug(opplist);
        }
        else{
            list<Opportunity>opplist = [select Id,Name,Amount from Opportunity];
            system.debug(opplist);
        }
        
    }

}