public class Campaign {
    public void EmailSubjects(){
        list<string>subjects = new list<string>{'New Product In Market', 'Try New Fresh Juice', 'Add This Produst In Your List', 'Freashness In Your in take'};
            System.debug(subjects);
        Subjects.add('freshness in Seconds');
        subjects.add('Maybe your Daily Parter');
        system.debug(Subjects);
        subjects.remove(0);
        for(string sub:subjects){
            system.debug('Subject: ' + sub + ' Index Of the Sunject:  ' + subjects.indexOf(sub));
        }
        
    }

}