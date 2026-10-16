public class Bank {
    integer balance=70000;
    public integer deposit(integer money){
        return this.balance + money; 
    }
    public integer withdraw(integer money){
        return this.balance - money; 
    }
}

//Bank obj = new Bank();
//System.debug(obj.deposit(30000));
//Bank obj = new Bank();
//System.debug(obj.withdraw(30000));