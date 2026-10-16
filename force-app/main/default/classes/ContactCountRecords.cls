public class ContactCountRecords {
    list<Contact>contactList = new list<Contact>();
    public static void getContactCount(){
        list<Contact>contactList = [select Name from Contact where Name!=Null];
        integer count=0;
        for(Contact st:contactList){
            count++;
        }
        system.debug('Total Contact Records in ORG is: '+count);
    }

}