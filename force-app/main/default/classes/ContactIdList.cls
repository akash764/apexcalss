public class ContactIdList {
    static map<Id,String>contactAccountmap = new map<Id,String>();
    public static void contactAccountName(){
        list<Contact>contactList = [select Id,Account.Name from Contact where Account.Name!=Null];
        for(Contact ct:contactList){
            contactAccountmap.put(ct.Id,ct.Account.Name);
        }
    }
    public static void display(){
        for(Id con:contactAccountmap.keySet()){
            system.debug('=========================');
            system.debug('Contact Id: '+ con);
            system.debug('Contact Account Name:  '+ contactAccountmap.get(con));
            system.debug('=========================');
        }
    }
}