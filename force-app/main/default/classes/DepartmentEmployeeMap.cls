public class DepartmentEmployeeMap {
    static map<string,integer>empMap = new map<string,integer>();
    public static void addDepartment(string department,integer emp){
        empMap.put(department,emp);
    }
    public static void display(){
        for(string st:empMap.keySet()){
            system.debug(st+' : '+empMap.get(st));
        }
    }
    public static void departmentCount(integer count){
        for(string st:empMap.keyset()){
            if(empMap.get(st) > count){
                system.debug('Department Have Greater Employee Count: '+st);
            }
            else{
                system.debug('Department Not Found');
            }
        }
    }

}
/*
 * DepartmentEmployeeMap.addDepartment('HR',34);
DepartmentEmployeeMap.addDepartment('DEV',90);
DepartmentEmployeeMap.display();
DepartmentEmployeeMap.departmentCount(80);
*/