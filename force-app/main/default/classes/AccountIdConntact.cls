public class AccountIdConntact {
    static map<id,list<Contact>>accountidcontactmap = new map<id,list<Contact>>();
    public static void addAccountIdConntact(){
        list<Contact>contactList = [select id,AccountId,Name from Contact where AccountId!= Null];
        for(Contact con:contactList){
            if(accountidcontactmap.containsKey(con.AccountId)){
                accountidcontactmap.get(con.AccountId).add(con);
            }
            else{
                accountidcontactmap.put(con.AccountId,new list<Contact>());
            }
        }
    }
    public static void display(){
        for(id accid:accountidcontactmap.keySet()){
            system.debug(accid +':');
            for(Contact con:accountidcontactmap.get(accid)){
                system.debug(con);
            }
        }
    }

}