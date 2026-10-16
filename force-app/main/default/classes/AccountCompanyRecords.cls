public class AccountCompanyRecords {
    static list<Account>accountList = new list<Account>();
    public static void accountRecords(){
        list<Account>accountList = [select Id,Name,	Organization_Name__c	 from Account where 	Organization_Name__c	 like 'The One'  limit 5];
        for(Account st:accountList){
            system.debug('=============');
            system.debug(st.Id);
            system.debug(st.Name);
            system.debug(st.Organization_Name__c);
            system.debug('=============');
        }
        
    }

}