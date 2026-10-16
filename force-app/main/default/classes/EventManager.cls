public class EventManager {
    string event;
    integer n;
    static map<string,list<string>>eventMap;
    public EventManager(){
        eventMap = new map<string,list<string>>();
    }
    public static void registerAttendee(string event,list<string>attendee){
        if(eventMap.containsKey(event)){
            eventMap.get(event).addAll(attendee);
        }
        else{
            eventMap.put(event,new list<string>(attendee));
        }
        system.debug(eventMap);
    }
    public static void printEventAttendees(){
        for(string st:eventMap.keySet()){
            system.debug('Event '+st+' Contains:');
            for(string eve:eventmap.get(st)){
                system.debug(eve);
            }
        }
    }
    public static void printEventWithMoreThan(integer n){
        for(string st:eventMap.keySet()){
            if(n < eventMap.get(st).size()){
                system.debug(st +' Event Have More Than '+n+' Attendees');
            }
        }
    }

}
/*
 * EventManager obj = new EventManager();
EventManager.registerAttendee('Bandham25',new list<string>{'Mohan','Magesh','Sanjay','Arish'});
EventManager.registerAttendee('Salesforce', new list<string>{'Nolan','James Gun','syder'});
EventManager.printEventAttendees();
EventManager.printEventWithMoreThan(3);*/