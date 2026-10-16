public class Student{
    public integer total(integer mark1, integer mark2, integer mark3) {
        return mark1 + mark2 + mark3;
    }
    public integer avg(integer totalMarks) {
        return totalMarks / 3;
    }
    public String grade(integer average) {
        if (average >= 90) {
            return 'A+';
        } else if (average >= 80) {
            return 'A';
        } else if (average >= 70) {
            return 'B';
        } else if (average >= 60) {
            return 'C';
        } else if (average >= 50) {
            return 'D';
        } else {
            return 'F';
        }
    }
}
//Student obj = new Student();
//System.debug(obj.total(99,95,90));