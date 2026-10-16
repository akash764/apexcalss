public class Calsi {
    public Integer a;
    public Integer b;

    public Calsi(Integer a, Integer b) {
        this.a = a;
        this.b = b;
    }

    public Integer add() {
        return this.a + this.b;
    }
    public integer sub() {
        return this.a - this.b;
    }
    public integer mul() {
        return this.a * this.b;
    }
    public integer div() {
        return this.a / this.b;
    }
}
//Calsi obj=new Calsi(4,7);
//system.debug(obj.add());
//system.debug(obj.sub());
//system.debug(obj.mul());
//system.debug(obj.div());