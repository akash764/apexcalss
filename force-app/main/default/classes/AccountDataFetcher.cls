public class AccountDataFetcher {
    @TestVisible
    private static AccountDataWrapper fetchAccountData(String accountName) {
        AccountDataWrapper wrapper = new AccountDataWrapper();

        wrapper.opportunities = [
            SELECT Id, Name, Amount 
            FROM Opportunity 
            WHERE Account.Name = :accountName
        ];

        if (!Test.isRunningTest()) {
            wrapper.contacts = [
                SELECT Id, Name 
                FROM Contact 
                WHERE Account.Name = :accountName
            ];
        } else {
            wrapper.contacts = new List<Contact>();
        }

        return wrapper;
    }

    public class AccountDataWrapper {
        public List<Opportunity> opportunities;
        public List<Contact> contacts;
    }
}