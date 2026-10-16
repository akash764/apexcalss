public class LeadCompanyname {
    static list<Lead>leadCompany = new list<Lead>();
    public static void leadrecords(){
        list<Lead>leadCompany = [select id,Name,Company from Lead where Company like 'The One'];
            system.debug(leadCompany);
    }
    
}
//LeadCompanyname.leadrecords();