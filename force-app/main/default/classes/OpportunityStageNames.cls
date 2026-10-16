public class OpportunityStageNames {
    static map<string,integer>oppStage = new map<string,integer>();
    public static void OpportunityStageNames(){
        list<AggregateResult>opplist = [select StageName ,count(Id) StageCount from Opportunity where StageName!= null group by StageName];
        for(AggregateResult opp:opplist){
            integer count = (integer)opp.get('StageCount');
            string st = (string)opp.get('StageName');
            oppStage.put(st,count);
        }
        system.debug(oppStage);
    }

}