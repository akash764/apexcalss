public class CourseEnrollment {
    string name;
    string course;
    string courseName;
    static map<string,list<string>>courseMap = new map<string,list<string>>();
    public static void enrollmentList(List<String>studentsName,string course){
        courseMap.put(course,studentsName);
        system.debug(courseMap);
    }
    public static void printEnrolledStudents(string coursename){
        if(courseMap.containsKey(courseName)){
            system.debug('Students Enrolled For '+coursename+ ' Are '+ courseMap.get(coursename));
        }
        else{
            System.debug('Course '+ coursename + ' Not Found');
        }
    } 
}
/*
 * CourseEnrollment.enrollmentList(new list<string>{'John','Mary'},'Salesforce');
CourseEnrollment.enrollmentList(new list<string>{'David','Sara'},'Java');
CourseEnrollment.printEnrolledStudents('Salesforce');
CourseEnrollment.printEnrolledStudents('Python');
*/