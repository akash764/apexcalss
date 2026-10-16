public class Coursemap {
    static map<string,list<string>>mainMap = new map<string,list<string>>();
    public static void addMap(string coruse,string coruseList){
        mainMap.put('Shortterm',new list<string>{'python','c'});
        mainmap.put('longterm',new list<string>{'c++','Java'});
        if(mainMap.containskey(coruse)){
            mainmap.get(coruse).add(coruseList);
        }
        else{
            mainmap.put(coruse, new list<string>{coruseList});
        }
        
    }
    public static void display(){
        for(string st:mainMap.keySet()){
            system.debug('===================');
            system.debug(st);
            for(string record:mainMap.get(st)){
                system.debug(record);
            }
            system.debug('====================');
        }
    }
    
    
}