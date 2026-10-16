public class Circle {
    decimal radius;
    decimal Area;
    decimal circumference;
    public Circle (decimal radius) {
        this.radius = radius;
        this.Area = 3.14 * (this.radius * this.radius);
        this.circumference = 2 * 3.4 * this.radius;
        system.debug(this.radius);
        system.debug(this.Area);
        system.debug(this.circumference);
    }

}
//Circle obj=new Circle(5);