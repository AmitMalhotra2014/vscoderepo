public class CollectionDemo {
    public void getNames() {
    
        List<Account> act = [select id, name from account where name = 'abc' limit 1];
        System.debug(act);
        
        
        Map<String,String> name = new Map<String,String>();
        name.put('name1','amit');
        name.put('name2','raj');
        name.put('name3','prem');
        name.put('name4','sandy');
        name.put('name1','Raja');
        System.debug(name);
      
    }    
 }