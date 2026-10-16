public class Banking {
    integer balance;
    public Banking (integer balance){
        this.balance=balance;
    }
    public void deposit (integer amount){
        system.debug('Your Balance is ' + (this.balance + amount));
    }
    public void withdraw (integer amount){
        system.debug('Your Balance is ' + (this.balance - amount));
    }

}
//Banking obj=new Banking(70000);
//obj.deposit(30000);