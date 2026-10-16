public class AccountPhone {
    list<Account>accountList = new list<Account>();
    public static void getAccountPhones(){
        list<Account>accountList = [select id,Phone from Account where Phone!=Null];
        for(Account st:accountList){
            system.debug('================');
            system.debug(st.id);
            system.debug(st.Phone);
            system.debug('=================');
        }
    }

}