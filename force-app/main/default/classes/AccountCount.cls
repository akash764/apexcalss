public class AccountCount {
    static list<Account>accountList = new list<Account>();
    public static void getAccountCount(){
        list<Account>accountList = [select id,Name from Account];
        integer count=0;
        for(Account st:accountList){
            count++;
        }
        system.debug('Total Account Records is: '+count);
    }

}