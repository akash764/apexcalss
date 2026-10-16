public class Rectancle extends Shape{
    integer length;
    integer breadth;
    public Rectancle (integer length,integer breadth){
        this.length = length;
        this.breadth = breadth;
    }
    public override integer area(){
        return this.length * this.breadth;
    }

}

//Rectancle obj=new Rectancle(2,4);
//Shape obj1=new Shape();
//system.debug(obj1.area());
//system.debug(obj.area());