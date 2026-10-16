public class EmployeeStore {
    static map<string,list<EmployeeDetails>>empMap = new map<string,list<EmployeeDetails>>();
    public static void findEmpolyees(string department,string location,string employeeId,string employeeName,integer salary,string designation){
        EmployeeDetails emp = new EmployeeDetails(department, location, employeeId, employeeName, salary, designation);
        if(empMap.containsKey(employeeId)){
            empMap.get(emp.employeeId).add(emp);
        }
            else{
                empMap.put(emp.employeeId,new list<EmployeeDetails>{emp});
            }
        
    }
    public static void display(){
        for(list<EmployeeDetails> empre:empMap.values()){
            for(EmployeeDetails empo:empre){
                system.debug('======================================');
                system.debug('Employee Deatials:' +empo.employeeId);
                system.debug(empo.department);
                system.debug(empo.designation);
                system.debug(empo.employeeName);
                system.debug(empo.location);
                system.debug(empo.salary);
                system.debug('======================================');
            }
            
        }
    }

}