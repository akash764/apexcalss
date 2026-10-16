public class OpportunityClosed { 
    static List<Opportunity> oppList = new List<Opportunity>(); 
    public static void getOpportunityclosed() { 
        List<Opportunity> oppList = [SELECT Id, Name, CloseDate FROM Opportunity WHERE CloseDate > TODAY]; 
        
        for (Opportunity st : oppList) { 
            System.debug('======================'); 
            System.debug(st.Name); 
            System.debug(st.CloseDate); 
            System.debug('======================'); 
        } 
    } 
}