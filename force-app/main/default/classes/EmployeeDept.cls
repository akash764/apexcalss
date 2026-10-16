public class EmployeeDept {
    string id;
    string department;
    static map<string,string>employee = new map<string,string>();
    public EmployeeDept(string id,string department){
        this.id=id;
        this.department=department;
        employee.put(id,department);
    }
    public static void display(){
        system.debug(employee);
    }
    public static string getDepartment(string empId){
        if(employee.containsKey(empId)){
            return 'Department Found for '+ empId + ' Department is: '+ employee.get(empId);
        }
        else{
            return 'Department Name NOt Found';
        }
    }
    /*
     * EmployeeDept obj=new EmployeeDept('E101','HR');
EmployeeDept obj1=new EmployeeDept('E102','IT');
EmployeeDept obj2=new EmployeeDept('E103','Sales');
EmployeeDept.display();
system.debug(EmployeeDept.getDepartment('E100'));*/
}