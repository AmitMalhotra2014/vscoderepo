public class ExceptionDemo {
    public void getDivide(integer a, integer b) {
        try{   
           
            try{
            }catch(ListException le) {
            }
            
        	integer res = a/b;
        	System.debug(res);
            Demo d = new Demo();
            System.debug('Value of d =' + d);
            d.sayHello();
            //null.sayHello();
            List<String> name = new List<String>();
            name.add('amit');
            System.debug(name.get(1));
        }catch(MathException me) {
             try{
            }catch(ListException le) {
            }
            
            System.debug('Please donot divide by zero..');
        }catch(NullPointerException ne) {
            System.debug('Please donot call a method with null');
        } catch(Exception e) {
            System.debug('Server is busy.. please wait');
        }
        finally {
             try{
            }catch(ListException le) {
            }
            system.debug('I will get executed in either of the case if exception is there or not');
        }
    }
}