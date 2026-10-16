public class OpportunityClosingDate {
    static List<Opportunity> oppList = new List<Opportunity>(); 
    public static void getOpportunityclosed(date closingdate) { 
        List<Opportunity> oppList = [SELECT Id, Name, CloseDate FROM Opportunity WHERE CloseDate =:closingDate]; 
        
        for (Opportunity st : oppList) { 
            System.debug('======================'); 
            System.debug(st.Name); 
            System.debug(st.CloseDate); 
            System.debug('======================'); 
        } 
    }

}
//OpportunityClosingDate.getOpportunityclosed(Date.newInstance(2026, 7, 14));