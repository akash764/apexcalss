public class AccountNotIndustries {
    static list<Account>accountList = new list<Account>();
    public static void accountRecords(){
        list<Account>accounList = [select Name,Industry from Account where Industry!='Agriculture' order by Name];
        for(Account st:accountList){
            system.debug('=======================');
            system.debug(st.Name);
            System.debug(st.Industry);
            system.debug('=======================');
        }
    }

}