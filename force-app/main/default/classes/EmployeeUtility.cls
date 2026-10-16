public class EmployeeUtility {
    static map<string,list<EmployeeDetails>>employeeMap = new map<string,list<EmployeeDetails>>();
    public static void addEmployees(string department,string location,string employeeId,string employeeName,integer salary,string designation){
        EmployeeDetails employeeList = new EmployeeDetails(department,location,employeeId,employeeName,salary,designation);
        if(employeeMap.containsKey(employeeId)){
            employeemap.get(employeeID).add(employeeList);
        }
        else{
            employeeMap.put(employeeId,new list<EmployeeDetails>{employeeList});
        }
    }
    public static void dispaly(){
        for(list<EmployeeDetails> employeeRecord:employeeMap.values()){
            for(EmployeeDetails employeeList:employeeRecord){
                system.debug('Details Of EmployeeId: '+employeeList.employeeId);
                system.debug('Department: '+employeeList.department);
                system.debug('Location: '+employeeList.location);
                system.debug('Employee Name: '+employeeList.employeeName);
                system.debug('Salary: '+employeeList.salary);
                system.debug('Designation: '+employeeList.designation);
                
            }
        }
    }
    public static void findDepartment(string department){
        integer empCount=0;
        for(list<EmployeeDetails> employeeRecord:employeeMap.values()){
            for(EmployeeDetails employeeList:employeeRecord){
                if(employeeList.department == department){
                    empCount++;
                }
            }
        }
        system.debug('Departement '+department+' Have '+empCount+' Employees');
    }
    public static void leastSalary(){
        integer leastSalary=0;
        list<integer>lessSalary = new list<integer>(); 
        for(list<EmployeeDetails> employeeRecord:employeeMap.values()){
            for(EmployeeDetails employeeList:employeeRecord){
                lessSalary.add(employeeList.salary);
                lessSalary.sort();
                if(lessSalary[0] == employeeList.salary){
                    system.debug(employeeList.employeeName);
                }
            }
        }
    }
    public static void empLocation(string location){
       for(list<EmployeeDetails> employeeRecord:employeeMap.values()){
            for(EmployeeDetails employeeList:employeeRecord){
                if(location == employeeList.location){
                    system.debug(employeeList.employeeName);
                }
            }
       }
    }
}