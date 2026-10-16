public class DepartmentEmployeeClass {
    static list<Employee__c>emplist = new list<Employee__c>();
    public static void createDepartmantEmployee(string depName,integer empNumber,string headquarters,string empName,string gender,string position,decimal salary){
        list<Department__c>deplist = new list<Department__c>();
        list<Employee__c>empchecklist = [select id,Name from Employee__c];
        integer depcount;
        integer empcount;
        deplist.add(new Department__c(Department_Name__c = depName,Employees__c = empNumber,HeadQuarters__c = headquarters));
        insert deplist;
        depcount++;
        for(Department__c dep:deplist){
            for(Employee__c empst:empchecklist){
                if(empst.Name != empName || (position == 'Head Department' && salary >= 80000)){
                    if(!string.isBlank( position )){
                    emplist.add(new Employee__c(Department__c = dep.id,Name = empName,Gender__c = gender,Position__c = position,Salary__c = salary));
                    empcount++;
                    }
                    else{
                        emplist.add(new Employee__c(Department__c = dep.id,Name = empName,Gender__c = gender,Position__c ='Others' ,Salary__c = salary));
                        empcount++;
                    }
                }
                else{
                    system.debug('Employee Name Already Exists OR Salary is More Than 80,000 for Position');
                }
            }
            system.debug('No Of Records Inserted In Department '+depcount+ ' Employee: '+empcount);
        }
        insert emplist;
    }
    public static void deleteRecord(string empName,string empId){
        list<Employee__c>emplist = [select id,Name from Employee__c];
        integer count;
        for(Employee__c emp:emplist){
            if(emp.EmployeeID__c == empID && emp.Name == empName){
                delete emp;
                count++;
            }
            else{
                system.debug('No Records Found');
            }
            system.debug('No of Records Deleted '+ count);
        }
    }
    public static void findMaxSalary(string position){
        list<Employee__c>emplist = [select id,Position__c,Salary__c from Employee__c];
        list<decimal>empsalary =  new list<decimal>();
        for(Employee__c emp:emplist){
            if(emp.Position__c == position){
                empsalary.add(emp.Salary__c);
            }
            empsalary.sort();
            system.debug('Max Salary For '+ position+' is: '+(empsalary.size() -1));
        }
    }
    public static void dispalyPositionMinSalary(){
        List<AggregateResult> results = [
        SELECT Position__c, MIN(Salary__c) minSalary, MAX(Salary__c) maxSalary 
        FROM Employee__c 
        WHERE Position__c != null 
        GROUP BY Position__c
    ];
    for (AggregateResult ar : results) {
        String position = (String) ar.get('Position__c');
        Decimal minSal = (Decimal) ar.get('minSalary');
        Decimal maxSal = (Decimal) ar.get('maxSalary');
        
        System.debug('Position: ' + position + ' | Minimum Salary: ' + minSal + ' | Maximum Salary: ' + maxSal);
    }
        
    }
    public static void findDepartmentWithLowestEmployees() {
    List<Department__c> deptList = [
        SELECT Id, Name, Employees__c 
        FROM Department__c 
        WHERE Employees__c != null 
        ORDER BY Employees__c ASC 
        LIMIT 1
    ];
    if (!deptList.isEmpty()) {
        System.debug('Department with lowest employees: ' + deptList[0].Name + 
                     ' (Employees: ' + deptList[0].Employees__c + ')');
    } else {
        System.debug('No department records found.');
    }
}
    
}