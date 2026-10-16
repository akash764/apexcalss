public class WrapperDemo {
    public class AccountWrapper {
        public Account acc { get; set; }
        public Boolean isSelected { get; set; }
    }
    
    public List<AccountWrapper> getWrappedAccounts() {
        List<Account> accList = [SELECT Id, Name FROM Account LIMIT 3];
        List<AccountWrapper> wrappedList = new List<AccountWrapper>();
        
        for (Account a : accList) {
            AccountWrapper aw = new AccountWrapper();
            aw.acc = a;
            aw.isSelected = true;
            wrappedList.add(aw);
        }
        return wrappedList;
    }
    
    public static void execute() {
        WrapperDemo demo = new WrapperDemo();
        List<AccountWrapper> results = demo.getWrappedAccounts();
        for (AccountWrapper aw : results) {
            System.debug('Account Id: ' + aw.acc.Id + ', Name: ' + aw.acc.Name + ', Is Selected: ' + aw.isSelected);
        }
    }
}