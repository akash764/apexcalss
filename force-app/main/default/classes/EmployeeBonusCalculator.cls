public class EmployeeBonusCalculator {
    decimal monthlySalary = 30000;
    decimal percentageBonus = 0.20;
    public void yearlySalary(){
        system.debug('Employee Yearly Salary is ' + (this.monthlySalary * 12));
    }
    public void bonus(){
        system.debug('Employee Bonus is ' + (this.monthlySalary * this.percentageBonus));
    }
    

}
//EmployeebonusCalculator obj=new EmployeebonusCalculator();
//obj.yearlySalary();
//obj.bonus();