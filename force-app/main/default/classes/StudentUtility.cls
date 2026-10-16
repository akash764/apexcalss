public class StudentUtility {
    public static String calculateGrade(Integer m1, Integer m2, Integer m3) {
        if (m1 == null || m2 == null || m3 == null) {
            return 'No Grade';
        }
        
        Decimal avg = (m1 + m2 + m3) / 3.0;
        
        if (avg >= 90) {
            return 'A';
        } else if (avg >= 75) {
            return 'B';
        } else if (avg >= 60) {
            return 'C';
        } else if (avg >= 40) {
            return 'D';
        } else {
            return 'F';
        }
    }
}