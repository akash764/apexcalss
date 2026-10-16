public class CarController {
    public String brand;
    public String model;
    public CarController(String brand, String model) {
        this.brand = brand;
        this.model = model;
    }
    public String startCar() {
        return this.brand + ' ' + this.model + ' is starting';
    }
    public String stopCar() {
        return this.brand + ' ' + this.model + ' has stopped';
    }
}
//CarController myCar = new CarController('Tesla', 'Model 3');
//System.debug(myCar.startCar()); 
//System.debug(myCar.stopCar());