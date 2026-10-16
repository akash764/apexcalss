public class AccountUtility { 

    public static Integer getAccountsRelatedChild() {
        List<Account> accList = [
            SELECT Name, 
                   (SELECT LastName FROM Contacts), 
                   (SELECT Name, StageName, Amount FROM Opportunities) 
            FROM Account
        ];
        
        Integer contactCount = 0;
        Integer opportunityCount = 0;
        
        for (Account acc : accList) {
            if (acc.Contacts != null) {
                contactCount += acc.Contacts.size();
            }
            if (acc.Opportunities != null) {
                opportunityCount += acc.Opportunities.size();
            }
        }
        
        Integer totalChildRecords = contactCount + opportunityCount;
        return totalChildRecords;
    }

    public static integer clearAccount() {
        List<Account> inactiveAccounts = [SELECT Id FROM Account WHERE Status__c = 'Inactive'];
        if (!inactiveAccounts.isEmpty()) {
            delete inactiveAccounts;
        }
        
        return inactiveAccounts.size();
    }
}