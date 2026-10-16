public class AccountSecondRecord {
    list<Account>accountList = new list<Account>();
    list<Account>acc = new list<Account>();
    public static void getSecondAccountIdAndName(){
        list<Account>accountList = [select Id,Name from Account limit 2];
        list<string>accountNameId = new list<string>();
        for(Account st:accountList){
            accountNameId.add('Account Id:'+ st.id+' Account Name: '+st.Name );
        }
        system.debug('Account ID: '+accountNameId[1]);
    }
    public string getAccountName(){
        list<Account> acc = [SELECT Id,Name FROM Account];
        for(Account st:acc){
            return st.Name;
        }
        return null;
    } 
}
/*
 * AccountSecondRecord.getSecondAccountIdAndName();
AccountSecondRecord obj = new AccountSecondRecord();
system.debug(obj.getAccountName());*/