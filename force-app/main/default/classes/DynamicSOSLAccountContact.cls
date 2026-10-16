public class DynamicSOSLAccountContact {
    public static void searchAccountContact(string searchword){
        list<list<SObject>>searchlist = [find :searchword in Name fields returning Account(Name),Contact(Name)];
        list<Account>accountlist = (list<Account>)searchlist[0];
        list<Contact>contactlist = (list<Contact>)searchlist[1];
        system.debug(accountlist);
        system.debug(contactlist);
        
    }

}