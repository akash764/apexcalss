public class StudentSubjectManager {
    string studentName;
    string newSubject;
    list<string>subjects;
    static map<string,list<string>>subjectMap = new map<string,list<string>>();
    public StudentSubjectManager(){
        this.studentName=studentName;
        this.newSubject=newSubject;
    }
    public static void addSubject(string studentName,string newSubject){
        if(subjectMap.containsKey(studentName)){
            subjectMap.get(studentName).add(newSubject);
            system.debug(subjectMap);
        }
        else{
            subjectMap.put(studentName,new list<string>{newSubject});
            system.debug(subjectMap);
        }
    }
    public Static void showSubjects(string studentName){
        for(string st:subjectMap.get(studentName)){
            system.debug(st);
        }
    }

}
/*
 * StudentSubjectManager.addSubject('Rahul','Maths');
StudentSubjectManager.addSubject('Priya','English');
StudentSubjectManager.addSubject('Priya','Science');
StudentSubjectManager.addSubject('Rahul','History');
StudentSubjectManager.showSubjects('Rahul');
*/