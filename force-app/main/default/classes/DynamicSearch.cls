public class DynamicSearch {
    public static void DynamicSearch(string field,string objectName,string filterField,string operator,string filter){
        string query = 'select '+ field+ ' from '+objectName +' where '+ filterField +' '+operator+' '+filter;
        list<object>objlist = Database.query(query);
        system.debug(objlist);
    }

}