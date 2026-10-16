public class CaseIdContactEmaillAccountName {
    static map<id,list<string>>casemap = new map<id,list<string>>();
    public static void addConatctEmailAccountName(){
        list<Case>caselist = [select id,Contact.Email,Account.Name from Case where Contact.Email!= null AND Account.Name != null];
        for(Case cs:caselist){
            casemap.put(cs.Id,new list<string>{cs.Contact.Email,cs.Account.Name});
        }
    }
    public static void getConatctEmailAccountName(id caseid){
         list<Case>caselist = [select id,Contact.Email,Account.Name from Case where id = :caseid];
        if(!Casemap.isEmpty()){
            case cs = caselist[0];
            String email = (cs.Contact != null && cs.Contact.Email != null) ? cs.Contact.Email : '';
            String accName = (cs.Account != null && cs.Account.Name != null) ? cs.Account.Name : '';
            system.debug('Contact Email: '+ email+ 'Account Name: '+accName);
        }
        
        
    }
    
}