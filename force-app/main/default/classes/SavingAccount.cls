public class SavingAccount extends BankAccount1 {
    decimal balance;
    public SavingAccount(decimal balance){
        this.balance = balance;
    }
    public override decimal calculateInterset(){
        return this.balance * 0.05;
    }

}
//SavingAccount obj=new SavingAccount(7000);
//System.debug(obj.calculateInterset());