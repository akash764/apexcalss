public class Printer implements ITDevice{
    public string startDevice(){
        return 'Started Device Printer';
    }
    public string runDiagnostics(){
        return 'Running Diagnostics on Printer';
    }

}
/*
Printer obj=new Printer();
system.debug(obj.startDevice());
system.debug(obj.runDiagnostics());

Laptop obj=new Laptop();
system.debug(obj.startDevice());
system.debug(obj.runDiagnostics());
*/