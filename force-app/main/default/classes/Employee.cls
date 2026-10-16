public class Employee {
    list<string>name =new list<string>{'Mohan', 'Akash', 'Dharma', 'Arish', 'Sanjay', 'Magesh'};
        list<string>department =new list<string>{'HR', 'HR', 'Manager', 'Trainee', 'CEO', 'Tea Boy'};
            list<list<string>>employee = new list<list<string>>();
    public void uniqueDepartment(){
        set<string>uniqueDepartments = new set<string>();
        uniqueDepartments.addAll(department);
        system.debug(uniqueDepartments);
    }
    
}