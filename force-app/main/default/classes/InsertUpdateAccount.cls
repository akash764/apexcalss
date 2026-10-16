public class InsertUpdateAccount {
    public static void InsertUpdateAccount(integer count,string industry,string newIndustry){
        list<Account>acclist = new list<Account>();
        for(integer i=1;i<=count;i++){
            acclist.add(new Account(Name = 'Test'+i,Industry = industry));
        }
        if(!acclist.isEmpty()){
            insert acclist;
            system.debug(acclist);
        }
        for(Account acc:acclist){
            acc.Industry=newindustry;
        }
        if(!acclist.isEmpty()){
            update acclist;
            system.debug(acclist);
        }
    }

}