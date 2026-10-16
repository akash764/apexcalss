public class AttendanceTracker {
    static integer totalPresentDays=0;
    public static integer markpresent (){
        totalPresentDays++;
        return totalPresentDays;
    }

}
//system.debug(AttendanceTracker.markpresent());
//system.debug(AttendanceTracker.markpresent());