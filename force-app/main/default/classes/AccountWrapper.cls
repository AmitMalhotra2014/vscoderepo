public class AccountWrapper{
	public cls_accountList[] accountList;
	
    class cls_accountList {
		public String accountName;	
		public cls_contacts[] contactList;
	}
	
    class cls_contacts {
		public String FirstName;
		public String LastName;
	}
	public static AccountWrapper parse(String json){
        //JSON.deserialize from JSON into an AccountWrapper instance
		return (AccountWrapper) System.JSON.deserialize(json, AccountWrapper.class);
        
	}
	public static void testParse() {
		String json='{"accountList": [{"accountName": "LTIMindtree","contactList": [{"FirstName": "Amit","LastName": "Malhotra"},{"FirstName": "Raja","LastName": "Babu"}]},{"accountName": "TCS","contactList": [{"FirstName": "Raj","LastName": "Malhotra"}]}]}';
		AccountWrapper obj = parse(json);          
            // first account
            System.debug('Account Wrapper => ' + obj.accountList[0].accountName);
            // now first account contacts       
        	System.debug('Account Wrapper contact => ' + obj.accountList[0].contactList[0].firstName);
        	// second account
        	System.debug('Account Wrapper => ' + obj.accountList[1].accountName);
        	// now second account contact
        	System.debug('Account Wrapper contact => ' + obj.accountList[1].contactList[0].firstName);
            //converting back from an AccountWrapper instance into JSON      
            String jsonString = System.JSON.serialize(obj);
            System.debug('Again In JSON form => ' + jsonString);
 	}
}