public class UpdateContactName {
    public static void UpdateContactName(string oldLastName,string newLastName){
        list<Contact>conlist = [select LastName from Contact where LastName =:oldLastName and LastName!=null];
        for(Contact con:conlist){
            if(con.LastName == oldLastName){
                con.LastName=newLastName;
            }
            else{
                system.debug('LastName Not Found');
            }
        }
        system.debug(conlist);
        update conlist;
    }
    
}