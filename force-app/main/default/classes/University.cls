public class University {
    public void departments(){
        list<string>bsc = new list<string>{'Python', 'SQl', 'OOPS'};
            list<string>bcom = new list<string>{'Maths', 'Accounts', 'Economics'};
                list<string>ba = new list<string>{'English', 'Grammer', 'Communication'};
                    list<list<string>>courses = new list<list<string>>{bsc, bcom, ba};
                        list<string>uniCourses = new list<string>{'B.Sc Computer Science', 'B.Com', 'B.A English' };
                        for(integer count = 0;count<courses.size();count++){
                            system.debug('Department ' + uniCourses[count]+' Subjects:');
                            for(string sub:courses[count]){
                                system.debug(sub);
                            }
                        }
                        }
    
}