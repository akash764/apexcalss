public class AccountFirstRecord {
    list<Account>accountList = new list<Account>();
    public static void AccountFirstRecord(){
        list<Account>accountList = [select id,Name from Account where Name!=Null];
        system.debug('Account Fisrt Record Name and ID: '+ accountList[0]);
    }
}