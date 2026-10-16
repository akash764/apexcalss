public class EmployeeTasksManager {
    string empName;
    string newTask;
    static map<string,list<string>>task = new map<string,list<string>>();
    public EmployeeTasksManager(){
        this.empName=empName;
        this.newTask=newtask;
    }
    public static void addTask(string empName,string newTask){
        list<string>taskList = new list<string>();
        if(task.containsKey(empName)){
            task.get(empName).add(newTask);
            system.debug(task);
        }
        else{
            task.put(empName,new list<string>{newTask});
            system.debug(task);
        }
    }
    public static void showtasks(string empName){
        if(task.containsKey(empName)){
            for(string st:task.get(empName)){
                system.debug(st);
            }
        }
        else{
                system.debug('Employee not Exists');
            }
    }

}
/*
 * EmployeeTasksManager.addTask('John','Design');
EmployeeTasksManager.addTask('Alice','Testing');
EmployeeTasksManager.addTask('Alice','Review');
EmployeeTasksManager.showtasks('Alice');
*/