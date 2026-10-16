public class ContactAccountMap {
    public Static void getContactAccount(list<Contact>contactList){
        map<Id,Account>accountMap = new map<Id,Account>([select ID, Name from Account]);
        map<Id,string>contactMap = new  map<Id,string>();
        for(Contact con:contactList){
            if(con.AccountId!=Null && accountMap.containsKey(con.AccountId)){
                contactMap.put(con.Id,accountMap.get(con.AccountId).Name);
            }
            else{
                system.debug('No Records Found');
            }
        }
    }

}
/*
 * list<Contact> contactList = [select Id, AccountId from Contact];
ContactAccountMap.getContactAccount(contactList);*/