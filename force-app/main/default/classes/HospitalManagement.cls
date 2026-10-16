public class HospitalManagement {
    public void hospitalDepartments(){
        list<string>cardiology = new list<string>{'Mohan', 'Asifa'};
            list<string>neurology = new list<string>{'Dharma', 'Magesh'};
                list<string>pediatrics = new list<string>{'Sanjay', 'Muruga'};
                    list<list<string>>departments = new list<list<string>>{cardiology, neurology, pediatrics};
                        system.debug('Departments in hospital: ' + departments);
            for(list<string>dep:departments){
                system.debug(dep);
                for(string department:dep){
                    system.debug(department);
                }
            
        }
    }
    
}