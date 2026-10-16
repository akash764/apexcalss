public class SOSLQuery {
    public static void getAccountRecord(){
        list<list<SObject>>searchlist = [find 'Burlington' in all fields returning Account(Name),Contact(Name)];
        list<Account> searchedAccountlist = (list<Account>)searchlist[0];
        list<Contact> searchedContactlist = (list<Contact>)searchlist[1];
        system.debug(searchedAccountlist);
        system.debug(searchedContactlist);
        }

}