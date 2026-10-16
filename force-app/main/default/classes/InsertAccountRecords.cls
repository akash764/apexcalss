public class InsertAccountRecords {
    public static void createAccounts(integer count){
        list<Account>acc = new list<Account>();
        for(integer i=1;i<=count;i++){
            acc.add(new Account(Name = 'testinsert'+i));
        }
        insert acc;
        system.debug(acc);
    }

}