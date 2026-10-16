public class EmployeePayrollList {
    static list<EmployeePayroll>employeeList = new list<Employeepayroll>();
    public static void addEmployee(EmployeePayroll emp){
        employeeList.add(emp);
    }
    public static void EmployeePayrollList(){
        for(EmployeePayroll emp:employeeList){
            system.debug('Employee Name: '+ emp.empName);
            system.debug('Employee Department: '+emp.department);
            system.debug('Employee Salary: '+emp.salary);
        }
    }
    public static void employeeDepartment(){
        for(EmployeePayroll emp:employeeList){
            if(emp.department == 'HR'){
                System.debug('Employee With HR Department: '+ emp.empName);
            }
        }
    }
    public static void highestSalary(){
        string eName='';
        integer max=0;
        for(EmployeePayroll emp:employeeList){
            if(emp.salary > max){
                max = emp.salary + max;
                eName = emp.empName;
                system.debug(eName);
            }
        }
    }
}
/*
 * EmployeePayroll obj;
obj = new EmployeePayroll('Mohan', 'HR', 89000);
EmployeePayrollList.addEmployee(obj);
obj = new EmployeePayroll('Akash', 'Manager', 79000);
EmployeePayrollList.addEmployee(obj);
obj = new EmployeePayroll('Dharma', 'HR', 85000);
EmployeePayrollList.addEmployee(obj);
EmployeePayrollList.EmployeePayrollList();
EmployeePayrollList.employeeDepartment();
EmployeePayrollList.highestSalary();
*/