public class AccountLocation {
    static list<Account>accountList = new list<Account>();
    public static void accountRecords(){
        list<Account>accountList = [select Name,Industry,Billing_territories__c from Account order by Billing_territories__c];
        system.debug(accountList);
    }

}
//AccountLocation.accountRecords();