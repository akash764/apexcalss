public class AccountQuery {
    public static void SearchAccount(string field){
        if(!string.isEmpty(field)){
            string query = 'select '+field+' from Account';
            list<Account>acclist = Database.query(query);
            system.debug(acclist);
        }
    }

}