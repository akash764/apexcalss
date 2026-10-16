public class FindSOSL {
    public static void findName(){
        List<List<SObject>> searchList = [
            FIND 'Arun Kumar OR Aravind' 
            IN NAME FIELDS 
            RETURNING Lead(Name, Phone), Contact(Name, Phone)
        ];
        Lead[] searchLeads = (Lead[])searchList[0];
        Contact[] searchContacts = (Contact[])searchList[1];
        
        System.debug('Leads found: ' + searchLeads);
        System.debug('Contacts found: ' + searchContacts);
    }
    
}