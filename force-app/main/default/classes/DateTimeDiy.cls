public class DateTimeDiy {
    public static void dateTimeDiyFunction() {
        Date currentDate = Date.today();
        Date refSunday = Date.newInstance(1900, 1, 7);
        Integer dayOfWeek = Math.mod(refSunday.daysBetween(currentDate), 7);
        Integer daysToSubtract = (dayOfWeek == 0) ? 6 : (dayOfWeek + 1);
        Date previousMonday = currentDate.addDays(-daysToSubtract);
        
        System.debug('Current Date: ' + currentDate);
        System.debug('Previous Week Monday: ' + previousMonday);
    }
}