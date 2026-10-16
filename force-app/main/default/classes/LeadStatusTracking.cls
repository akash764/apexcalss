public class LeadStatusTracking {
    public void leadStatus(){
        list<string>status = new list<string>{'New', 'Contacted', 'Qualified', 'Disqualified', 'Waiting'};
            system.debug(status);
        status.add(1,'Converted');
        system.debug(status);
        status.remove(status.indexOf('Disqualified'));
        for(string st:status){
            system.debug(st);
        }
        
        
    }

}