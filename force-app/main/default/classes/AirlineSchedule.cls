public class AirlineSchedule {
    public void flightSchedule(){
        list<string>morning = new list<string>{'Chennai-Delhi', 'Mumbai-Bangalore', 'Hyderabad-Dubai'};
            list<string>afternoon = new list<string>{'Chennai-Delhi', 'Mumbai-Bangalore', 'Hyderabad-Dubai'};
                list<string>evening = new list<string>{'Chennai-Delhi', 'Mumbai-Bangalore', 'Hyderabad-Dubai'};
                    list<list<string>>schedule = new list<list<string>>{morning,afternoon, evening};
                        List<String> timeSlots = new List<String>{'Morning', 'Afternoon', 'Evening'};
        for (Integer count = 0; count < schedule.size(); count++) {
            System.debug('Time Slot: ' + timeSlots[count]);
            for (String route : schedule[count]) {
                System.debug('  - Route: ' + route);
            }
            
            
        }
    }
    
}