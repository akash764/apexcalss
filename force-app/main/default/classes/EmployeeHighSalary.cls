public class EmployeeHighSalary {
    static list<Employee__c>empList = [select Id,Salary__c,Name from Employee__c where Salary__c!= Null];
    public static void highSalary(){
        Employee__c high = emplist[0];
        for(Employee__c emp:empList){
            if(emp.Salary__c!=NULl && high!= NUll && emp.Salary__c >high.Salary__c){
                high = emp;
            }
        }
        system.debug(high);
    }
}