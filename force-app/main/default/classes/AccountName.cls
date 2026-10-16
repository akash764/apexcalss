public class AccountName {
    static list<Account>accountlist = new list<Account>();
    public static void getAccountStartName(string name){
        list<Account>accountlist = [select Name from Account where Name like :name];
        for(Account st:accountlist){
            system.debug('==================');
            system.debug(st.Name);
            system.debug('==================');
        }
    }

}