public class AccountType {
    static list<Account>accountList = new list<Account>();
    public static void getAccountTypeAnnualRevenue(string accType,integer revenue){
        list<Account>accountList = [select Name,Type,AnnualRevenue from Account where (AnnualRevenue >:revenue AND Type =:accType)];
        for(Account st:accountList){
            system.debug('=====================');
            system.debug(st.Name);
            system.debug(st.Type);
            system.debug(st.AnnualRevenue);
            system.debug('======================');
        }
        
    }

}