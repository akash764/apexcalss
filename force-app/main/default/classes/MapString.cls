public class MapString {
    public static map<string,list<string>> enterMapData(map<string,list<string>>mapList,string key,string value){
        if(mapList == Null){
            mapList = new map<string,list<string>>();
        }
        if(!mapList.containsKey(key)){
            mapList.put(key,new list<string>());
        }
        mapList.get(key).add(value);
        return mapList;
            
        
    }
    
}