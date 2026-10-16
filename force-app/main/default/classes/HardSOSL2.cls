public class HardSOSL2 {
    public static void AccountOpportunityfetcher(string word,list<string>typelist,decimal amount,integer topN){
        string st = string.join(typelist,',');
        String query = 'FIND ' + String.escapeSingleQuotes(word) + ' IN ALL FIELDS RETURNING Account(Name WHERE Type IN :typelist AND AnnualRevenue >= :amount LIMIT ' + topN + ')'; 
        list<list<SObject>>searchlist = search.query(query);
        list<Account>acclist = (list<Account>)searchlist[0];
        list<Opportunity>opplist = (list<Opportunity>)searchlist[1];
        system.debug(acclist);
        system.debug(opplist);
    }

}