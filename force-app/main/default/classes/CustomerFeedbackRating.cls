public class CustomerFeedbackRating {
    public void feedbackRating(){
        list<integer>ratings = new list<integer>{1,2,3,4,5};
            system.debug(ratings);
        ratings.add(6);
        system.debug(ratings);
        ratings[0] = 6;
        system.debug(ratings);
        system.debug('Total Ratings: ' + ratings.size());
         
    }

}