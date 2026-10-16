public class DynamicLeadQuery {
    public static void getLeads(list<string>fieldlist,string leadStatus,integer Recordlimit){
        String fields = String.join(fieldlist, ',');
        string query = 'select '+fields+' from Lead where Status = \''+String.escapeSingleQuotes(leadStatus)+'\' limit '+Recordlimit;
        list<Lead>leadlist = database.query(query);
        system.debug(leadlist);
    }

}