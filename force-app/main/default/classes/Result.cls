public class Result {
    integer sub1;
    integer sub2;
    integer sub3;
    string name;
    public Result(string name,integer a,integer b,integer c){
        this.sub1= a;
        this.sub2= b;
        this.sub3= c;
        this.name= name;
    }
    public void grade(){
        integer total=(this.sub1 + this.sub2 + this.sub3);
        system.debug('Student '+ name + ' Total is ' + total);
        if(total >=90){
            system.debug('Student ' + name +' Got A grade');
        }
        else if(total>=75){
            system.debug('Student ' + name +' Got B grade');
        }
        else if(total >= 50){
            system.debug('Student ' + name +'Failed in Exam');
        }
    }

}
//Result obj=new Result(99,89,70);
//obj.grade();