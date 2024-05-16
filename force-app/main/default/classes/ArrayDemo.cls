public class ArrayDemo {
    
    
    public static void getValues() {
        //static declaration
        String[] name = new String[] {'amit','malhotra'}; 
        System.debug(name[0] + ' ' + name[1]);   
        
        //dynamic declaration
        String[] nm = new String[2];
        nm[0] = 'Raja';
        nm[1] = 'Babu';
        System.debug(nm[0] + ' ' + nm[1]);   
        

        
    }

}