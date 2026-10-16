public class StudentsMarkManager {
    string student;
    static map<string,list<integer>>studentMark = new map<string,list<integer>>();
    public StudentsMarkManager(){
        studentMark.put('Mohan',new list<integer>{89,90,70});
        studentMark.put('Magesh',new list<integer>{87,60,80});
    }
    public static void addMarks(string student,list<integer>mark){
        if(studentMark.containsKey(student)){
           studentMark.get(student).addAll(mark);
            system.debug(studentMark);
        }
        else{
            studentMark.put(student,new list<integer>(mark));
            system.debug(studentmark);
        }
    }
    public static void printStudentMark(string student){
        if(studentMark.containsKey(student)){
            system.debug('Student '+student+' Marks:');
            for(integer st:studentMark.get(student)){
                system.debug(st);
            }
        }
    }
    public static void getAverage(string student){
        integer avg=0;
        if(studentMark.containsKey(student)){
            for(integer st:studentMark.get(student)){
                avg=avg+st;
            }
            system.debug('Student '+student+' got Average OF '+(avg/studentMark.get(student).size()));
        }
        else{system.debug('Studuent not found');}
    }
    
}
/*
 * StudentsMarkManager obj = new StudentsMarkManager();
StudentsMarkManager.addMarks('Tony',new list<integer>{80,90,70});
StudentsMarkManager.addMarks('Sophia',new list<integer>{85,85,95});
StudentsMarkManager.printStudentMark('Tony');
StudentsMarkManager.getAverage('Sophia');*/