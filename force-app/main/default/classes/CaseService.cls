public class CaseService {
    public static List<Case> getRecentCases() {
        return [SELECT Id, Subject, Status, CreatedDate FROM Case WHERE CreatedDate = LAST_N_DAYS:3];
    }
}