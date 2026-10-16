public class Temperture {
    decimal celsius;
    decimal fehrenheit;
    public Temperture(decimal celsius)  {
        this.celsius=celsius;
        this.fehrenheit=((celsius * 9)/5) + 32;
        system.debug(this.fehrenheit);
    }

}
//Temperture obj=new Temperture(25);