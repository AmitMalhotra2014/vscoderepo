public class CustomMetaDataDemo {
    
    public void getDatafromCS() {
        
        My_Custom_MetaData__mdt mcs = My_Custom_MetaData__mdt.getInstance('trionoff');
        System.debug(mcs.isActive__c);
        if(mcs.isActive__c == true) {
            
            System.debug('Call the trigger');
            
        }   else {
            
            System.debug('Dont Call the trigger');
        }     
        
        
    }

}