public class BankAccountTracker {
    string accountNumber;
    decimal balance=0;
    decimal amount=0;
    decimal addAmount=0;
    static map<string,decimal>accountMap = new map<string,decimal>();
    public BankAccountTracker(string accountNumber,decimal balance){
        accountMap.put(accountNumber,balance);
        system.debug(accountMap);
    }
    public void display(){
        system.debug(accountMap);
    }
    public void deposit(string accountNumber,decimal addAmount){
        amount = accountMap.get(accountNumber);
        accountMap.put(accountNumber,amount+addAmount);
        system.debug('Account Balance is : '+accountMap.get(accountNumber));
        system.debug(accountMap);
    }
    public void withdraw(string accountNumber,decimal amount){
        if(accountMap.containsKey(accountNumber)){
            if((accountMap.get(accountNumber))>2000){
                amount = accountMap.get(accountNumber) - amount;
                accountMap.put(accountNumber,amount);
                system.debug(accountMap);
            }
            else{
                system.debug('Insufficient Balance or Account not Found');
            }
        }
        else{
            system.debug('Account Not Found');
        }
    }

}
/*
 * BankAccountTracker acc = new BankAccountTracker('ACC101', 2000);
BankAccountTracker acc1 = new BankAccountTracker('ACC102', 5000);
BankAccountTracker acc2 = new BankAccountTracker('ACC103', 4000);
//acc.display();
acc2.withdraw('ACC103',700);
acc2.deposit('ACC102',700);*/