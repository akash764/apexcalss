public class ContactRecords {
    static list<Contact>contactList = new list<Contact>();
    public static void contactRecordsList(){
        list<Contact>contactList = [select Id,Name,Email from Contact where Email like 'gmail.com' limit 10];
        for(Contact st:contactList){
            system.debug('================');
            system.debug(st.Id);
            system.debug(st.Name);
            system.debug(st.Email);
                }
    }
    
}