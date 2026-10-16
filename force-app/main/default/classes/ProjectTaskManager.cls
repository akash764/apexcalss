public class ProjectTaskManager {
    string project;
    string task;
    static map<string,list<string>>projectMap = new map<string,list<string>>();
    public ProjectTaskManager(){
        projectmap.put('CRM UPGRADE',new list<string>{'TESTING','DESIGN','DEV'});
        projectmap.put('WEB REDESGIN',new list<string>{'TESTING','DESIGN','DEV'});
    }
    public static void addTask(string project,string task){
        if(projectMap.containsKey(project)){
            projectMap.get(project).add(task);
            system.debug(projectMap);
        }
        else{
            projectMap.put(project,new list<string>{task});
            system.debug(projectMap);
        }
    }
    public static void printTask(string project){
        if(projectMap.containsKey(project)){
            system.debug('Project '+project+' Contains:');
            for(string st:projectMap.get(project)){
                system.debug(st);
            }
        }
        else{
                system.debug('Project Title not Found');
            }
    }
    public static void countTasks(string project){
        system.debug('Project '+project+' Contains '+ projectMap.get(project).size()+' Tasks');
    }

}
/*
 * ProjectTaskManager obj = new ProjectTaskManager();
ProjectTaskManager.addTask('CRM UPGRADE', 'DEBUGGING');
ProjectTaskManager.addTask('SalesForce Project', 'DEVLOPING');
ProjectTaskManager.printTask('CRM UPGRADE');
ProjectTaskManager.countTasks('WEB REDESGIN');*/