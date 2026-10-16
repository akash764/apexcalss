public class ContactJobTitles {
    static list<Contact>contactList = new list<Contact>();
    public static void ContactRecords(){
        list<Contact>contactList = [select id,Name,Title from Contact where Title in ('Manager','Director')];
        system.debug(contactList);
    }

}
//ContactJobTitles.ContactRecords();