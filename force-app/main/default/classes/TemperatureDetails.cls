public class TemperatureDetails {
    static decimal fehrenheit;
    static decimal celsius;
    public static void convertTemperature(){
        celsius = 25;
        fehrenheit = ((celsius * 9)/5) + 32;
        system.debug('Temperature in Fehrenheit: ' + fehrenheit);
    }
    public static void convertCelsius(){
        celsius = ((fehrenheit - 32) * 5) / 9;
        system.debug('temperature in Celsius is: ' + celsius);
        system.debug('Conversion Done');
    }

}
//temperatureDetails.convertTemperature();
//temperatureDetails.convertCelsius();