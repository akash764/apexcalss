public class OpportunityFirstName {
    static list<Opportunity>oppList = new list<Opportunity>();
    public static void getFirstOpporunity(){
        list<Opportunity>oppList = [select Name from opportunity limit 1];
        for(Opportunity st:oppList){
        if(st.Name == Null){
            system.debug('No opportuntities found');
        }
        else{
            system.debug(st.Name);
        }
        }
    }
    
    
}