public class Demo {
    public void sayHello() {
        System.debug('Hello Apex.');
    }
    
    @testVisible
    private Integer sum(integer a, integer b) {
        Integer res = a+b;
        return res;
    }
    
    public void updateAccount(Account act) {
    
      // Business logic
    
    }
    
}