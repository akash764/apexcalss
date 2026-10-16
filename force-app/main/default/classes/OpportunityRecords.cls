public class OpportunityRecords {
    static integer amount=10000;
    static list<Opportunity>oppList = new list<Opportunity>();
    public static void oppRecords(){
        list<Opportunity>oppList = [select Name,Amount,StageName from Opportunity where Amount >:amount AND StageName='Prospecting' order by Amount Asc];
        for(Opportunity st:oppList){
            system.debug('===========================');
            system.debug(st.Name);
            system.debug(st.Amount);
            system.debug(st.StageName);
            system.debug('===========================');
        }
    }

}