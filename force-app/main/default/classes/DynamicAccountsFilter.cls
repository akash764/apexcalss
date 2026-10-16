public class DynamicAccountsFilter {
    public static void findAccounts(string name,string industry,string billingCountry){
        if(!string.isEmpty(name) && !string.isEmpty(industry) && !string.isEmpty(billingCountry) ){
            string query = 'SELECT Name, Industry, BillingCountry FROM Account ' +
                           'WHERE Name LIKE \'%' + String.escapeSingleQuotes(name) + '%\' ' +
                           'OR BillingCountry = \'' + String.escapeSingleQuotes(billingCountry) + '\' ' +
                           'OR Industry = \'' + String.escapeSingleQuotes(industry) + '\'';
            list<Account>acclist = database.query(query);
            system.debug(acclist);
        }
        else{
            system.debug('check Input Parameters');
        }
        
    }

}