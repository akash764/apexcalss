public class Emp {
    string name;
    decimal salary;
    decimal bonus;
    public Emp (string name,decimal salary){
        this.name= name;
        this.salary= salary;
        if(this.salary > 5000){
            this.bonus = this.salary * 0.10;
            system.debug('Employee: ' + this.name + ', Salary: ' + this.salary + ', Bonus: ' + this.bonus);
        }
        else{
            this.bonus= this.salary * 0.5;
            system.debug('Employee: ' + this.name + ', Salary: ' + this.salary + ', Bonus: ' + this.bonus);
        }
    }

}
//Emp obj=new Emp('Mohan', 50000);