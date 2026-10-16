public class LeadRecentRecords {
    static list<lead>leadList = new list<lead>();
    public static void leadRecords(){
        list<lead>leadList = [select Id,Name,Status from Lead where (Status ='Closed - Converted' or Status ='Open - Not Contacted') order by CreatedDate desc 
                              limit 5];
        for(Lead st:leadList){
            system.debug('===================');
            system.debug(st.Id);
            system.debug(st.Name);
            system.debug(st.Status);
        }
    }
    
}