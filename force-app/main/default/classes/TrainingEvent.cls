public class TrainingEvent {
    public void eventParticipants(){
        list<string>eventAttendees = new list<string>{'Mohan','Akash','Arish','dharma','Sri'};
            system.debug(eventAttendees);
        eventAttendees.add('Magesh');
        eventAttendees.add('Sanjay');
        system.debug(eventAttendees);
        system.debug(eventAttendees.remove(6));
        system.debug(eventAttendees);
    }
    
    
    
}