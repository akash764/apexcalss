public class StudentService {
    public class StudentWrapper {
        public String studentName { get; set; }
        public Integer marks { get; set; }
        public Boolean isPassed { get; set; }
    }
    
    public List<StudentWrapper> getWrappedStudents() {
        List<StudentWrapper> wrappedStudents = new List<StudentWrapper>();
        
        StudentWrapper s1 = new StudentWrapper();
        s1.studentName = 'Alice';
        s1.marks = 85;
        
        StudentWrapper s2 = new StudentWrapper();
        s2.studentName = 'Bob';
        s2.marks = 35;
        
        StudentWrapper s3 = new StudentWrapper();
        s3.studentName = 'Charlie';
        s3.marks = 40;
        
        StudentWrapper s4 = new StudentWrapper();
        s4.studentName = 'Diana';
        s4.marks = 92;
        
        List<StudentWrapper> rawStudents = new List<StudentWrapper>{s1, s2, s3, s4};
        for (StudentWrapper st : rawStudents) {
            if (st.marks >= 40) {
                st.isPassed = true;
            } else {
                st.isPassed = false;
            }
            wrappedStudents.add(st);
        }
        
        return wrappedStudents;
    }
    
    public static void execute() {
        StudentService service = new StudentService();
        List<StudentWrapper> results = service.getWrappedStudents();
        
        for (StudentWrapper st : results) {
            System.debug('Student: ' + st.studentName + ', Marks: ' + st.marks + ', Passed: ' + st.isPassed);
        }
    }
}