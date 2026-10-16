public class ContactCount {
    static string country='India';
    static list<Contact>contactList = new list<Contact>();
    public static void contactRecordsList(){
        integer count=0;
        list<Contact>contactList = [select Id,Name,Country__c from Contact where Country__c!=null];
        for(Contact st:contactList){
            system.debug('================');
            system.debug(st.Id);
            system.debug(st.Name);
            system.debug(st.Country__c);
            if(st.Country__c == country){
                count++;
            }
        }
        system.debug('Country with '+country+' Records count is: '+count);
    }
}