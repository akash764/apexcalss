public class AccountIndustries {
    static list<Account>accountList = new list<Account>();
    public static void getAccountIndustries(list<String>accountindusties){
        list<Account>accountList = [select Id,Name,Industry from Account where Industry in:accountindusties];
        for(Account st:accountList){
            system.debug('=================');
            system.debug(st.Name);
            system.debug(st.Industry);
            system.debug('=================');
        }
    }
}
//AccountIndustries.getAccountIndustries(new list<string>{'Agriculture','Biotechnology','Education'});