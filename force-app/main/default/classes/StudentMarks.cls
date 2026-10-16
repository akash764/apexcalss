public class StudentMarks {
    static map<string,integer>studentmap = new map<string,integer>();
    public static void addStudentMarks(string student,integer mark){
        studentmap.put(student,mark);
    }
    public static void display(){
        for(string st:studentmap.keySet()){
            system.debug(st+' : '+studentmap.get(st));
        }
    }
    public static void passedStudents(integer passMark){
        for(string st:studentmap.keyset()){
            if(studentmap.get(st) > passMark){
                system.debug('Student '+ st+' GOt passed With Marks: '+studentmap.get(st));
            }
        }
    }

}
/*
 * StudentMarks.addStudentMarks('Mohan',34);
StudentMarks.addStudentMarks('Akash',90);
StudentMarks.display();
StudentMarks.passedStudents(35);
*/