public class ContactNames {
    list<Contact>contactList = new list<Contact>();
    public static void getAllContactNames(){
        list<Contact>contactList = [select LastName from Contact where LastName!=null];
        for(Contact st:contactlist){
            system.debug('=================');
            system.debug(st.LastName);
            system.debug('=================');
        }
    }

}