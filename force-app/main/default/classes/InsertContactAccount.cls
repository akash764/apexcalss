public class InsertContactAccount {
    public static void createContactForAccount(id accid){
        list<Contact>contactlist = [select id from Contact where AccountId =:accid];
            if(contactlist.isEmpty()){
                list<Contact>conlist = new list<Contact>();
                conlist.add(new Contact(LastName = 'Test Contact', AccountId = accid));
                insert conlist;
            }   
        }
}