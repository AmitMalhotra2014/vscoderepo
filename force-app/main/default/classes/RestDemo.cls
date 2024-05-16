@RestResource(urlMapping='/myAccount/*')
global class RestDemo {
   @httpGet
    global static List<Account> getAllAccount() {
		List<Account> act = [select id, name from account];
        return act;        
   }
    @httpPost 
    global static Id insertAccount(String nm) {
        Account a = new Account();
        a.name = nm;
        insert a;
        return a.id;
    }
    @httpDelete
    global static void deleteAccount() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String recordId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Account act = [select id from account where id=:recordId]; 
        delete act;
    }
}