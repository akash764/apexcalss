public class StudentRollMap {
    static map<integer, string>studentRollno = new map<integer, string>();
    public static void addStudents(integer rollno,string name){
        studentRollno.put(rollno,name);
    }
    public static void display(){
        system.debug(studentRollno);
    }
    public static void rollnoExists(integer no){
        if(studentRollno.containsKey(no)){
            system.debug('Student name: '+ studentRollno.get(no));
        }
    }

}
/*
 * studentRollMap.addStudents(001,'Akash');
studentRollMap.addStudents(002,'Mohan');
studentRollMap.display();
studentRollMap.rollnoExists(002);*/