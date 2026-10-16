public class Findopp {
    public static void allOpp(){
        Integer totalOpportunities = [SELECT COUNT() FROM Opportunity];
System.debug('Total Number of Opportunities: ' + totalOpportunities);
        
    }

}