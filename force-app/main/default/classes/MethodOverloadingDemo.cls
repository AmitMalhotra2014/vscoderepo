public class MethodOverloadingDemo {
    
    public void sum(integer a, integer b)
    {
		integer res = a+b;
		System.debug('Result is = ' + res);        
    }
    public void sum(String a, String b)
    {
		String res = a+b;
		System.debug('Result is = ' + res);        
    }
    
    
}