public class HardSOSL1 {
    public static void searchString(string word){
        list<list<SObject>>searchlist = [find :word in all fields returning Account(Name where Rating = 'Hot'),Opportunity(Name where StageName = 'Closed Won' or StageName = 'Closed Lost')];
        list<Account>acclist = (list<Account>)searchlist[0];
        list<Opportunity>conlist = (list<Opportunity>)searchlist[1];
        system.debug(acclist);
        system.debug(conlist);
    }

}