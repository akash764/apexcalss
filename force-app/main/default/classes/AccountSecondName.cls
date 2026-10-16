public class AccountSecondName {
    list<Account>accountList = new list<Account>();
    public static void AccountSecondName(){
        list<Account>accountList = [select id,Name from Account where Name!=Null];
        system.debug('Account Second Name is: '+accountList[1]);
    }
}