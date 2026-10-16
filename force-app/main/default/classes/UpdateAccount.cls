public class UpdateAccount {
    public static void updateAccountRatings(string industry,string rating){
        list<Account>acclist = [select Name, Industry,Rating from Account where Industry= null and Rating = null];
        for(Account accst:acclist){
            accst.Industry=industry;
            accst.Rating=rating;
        }
        update acclist;
        
    }

}