public class DynamicSOQL {
    public static void searchObjectField(string field,string objectName){
        string query = 'select ' + field + ' from ' + objectName ;
        list<object>objlist = Database.query(query);
        system.debug(objlist);
    }

}