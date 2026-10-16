public class OpportuniitiesMethods {
    static list<Opportunity>oppList = [select Id,Name,Amount,StageName,LeadSource from Opportunity];
    public static void getAmount(decimal amount){
        for(Opportunity opp:oppList){
            if(opp.Amount > amount && opp.Amount!=Null){
                system.debug(opp.Id);
                system.debug(opp.Name);
            }
        }
    }
    public static void noOpp(string stage){
        integer count=0;
        for(Opportunity opp:oppList){
            if(opp.StageName == stage && opp.StageName!=Null){
                count++;
            }
        }
        system.debug('No of Opportunity Have '+stage+' is '+ count);
    }
    public static void leadSource(string leadSource,string stageName){
        for(Opportunity opp:oppList){
            if(opp.LeadSource == leadSource && Opp.LeadSource!=Null && opp.StageName == stageName && opp.StageName!=Null){
                system.debug('===============');
                system.debug(opp.Name);
                system.debug('===============');
            }
        }
    }
    public static void sumAmount(string stageName){
        decimal amount = 0; 
        for(Opportunity opp:oppList){
            if(opp.StageName == stageName && opp.StageName!=Null && opp.Amount!=Null){
                amount= amount+ opp.Amount;
            }
        }
        system.debug(amount);
    }
    
}