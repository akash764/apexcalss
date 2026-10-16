public class StudentsRecords {
    static list<Students>studentsList = new list<Students>();
    public static void addStudents(Students stu){
        studentsList.add(stu);
    }
    public static void displayList(){
        for(Students stu:studentsList){
            system.debug('Student Name: '+ stu.name);
            system.debug('Student '+ stu.name + ' Course: ' + stu.course);
            system.debug('Student '+ stu.name + ' Marks: ' + stu.marks);
        }
    }
    public static void getCourseStudentname(){
    List<String> studentName = new List<String>();
    for (Students stu : studentsList){
        if (stu.course == 'Java Full Stack'){
            studentName.add(stu.name);
            system.debug(studentName);
        }
    }
}
    public static void avgMarks(){
        integer avgmk=0;
        for(Students stu:StudentsList){
            avgmk = avgmk + stu.marks;
        }
        system.debug('Average Marks Of All Students is: '+ (avgmk/studentsList.size()));
    }

}