public class A {
    
    @future
    public Static void getA() {
        System.debug('From A Class');
       // B.getB();
        System.enqueueJob(new B());
        
    }

}