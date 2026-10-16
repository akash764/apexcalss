public class CasePriority {
    static list<Case>caseList = [select Id,Priority from Case where Priority!= Null];
    public static void priorityMessage(){
        list<string>message = new list<string>();
        for(Case record:caseList){
            switch on record.Priority{
                when 'High'{
                    message.add('requires immediate attention');
                    system.debug(record.Id+':'+message);
                }
                when 'Medium'{
                    message.add('needs to be addressed as soon');
                    system.debug(record.Id+':'+message);
                }
                when 'Low'{
                    message.add('address when permits');
                    system.debug(record.Id+':'+message);
                }
            }
        }
    }

}