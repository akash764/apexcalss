public class BankAccount {
    string name;
    integer amount;
    public BankAccount(string name,integer amount){
        this.name= name;
        this.amount= amount;
        if(this.amount < 1000){
            system.debug('Account Holder: ' + this.name + ', Balance: ' + this.amount +  ' Minimum balance not maintained');
        }
        else{
            system.debug('Account Holder: ' + this.name + ', Balance: ' + this.amount + ' Account Created Successfully');
        }
    }

}
//BankAccount obj=new BankAccount('Aasifa,70000');