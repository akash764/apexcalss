public class SOSLAccountContact {
    public static void searchAccountsContacts(string word){
        list<list<SObject>>searchlist = [FIND :word IN All FIELDS 
            RETURNING Account(Name, AnnualRevenue WHERE AnnualRevenue > 25000), 
                      Contact(Name WHERE Email != null)];
        list<Account>acclist = (list<Account>)searchlist[0];
        list<Contact>conlist = (list<Contact>)searchlist[1];
        system.debug(acclist);
        system.debug(conlist);
        
    }

}