public class AccountWrapperService {
    public class AccountWrapper {
        public Account acc { get; set; }
        public Boolean isBigAccount { get; set; }
    }
    
    public List<AccountWrapper> wrapAccounts() {
        List<Account> accList = [SELECT Id, Name, AnnualRevenue FROM Account LIMIT 5];
        List<AccountWrapper> wrappedAccounts = new List<AccountWrapper>();
        
        for (Account a : accList) {
            AccountWrapper aw = new AccountWrapper();
            aw.acc = a;
            
            if (a.AnnualRevenue != null && a.AnnualRevenue > 1000000) {
                aw.isBigAccount = true;
            } else {
                aw.isBigAccount = false;
            }
            
            wrappedAccounts.add(aw);
        }
        
        return wrappedAccounts;
    }
    
    public static void execute() {
        AccountWrapperService service = new AccountWrapperService();
        List<AccountWrapper> results = service.wrapAccounts();
        
        for (AccountWrapper aw : results) {
            System.debug('Account Name: ' + aw.acc.Name + ', Revenue: ' + aw.acc.AnnualRevenue + ', Is Big Account: ' + aw.isBigAccount);
        }
    }
}