public  class MyAccount {
    public PageReference  doSave() {
        upsert act;
        //return new PageReference('/apex/mySuccessPage');
        return new PageReference('https://www.google.com?q=Legend Of Saleforce');
    }
    Account act;
    public MyAccount() {
    
    Id i = apexpages.currentpage().getparameters().get('id');
    
    if(i == null) {
        act = new Account();
    
    }else {
           act = [select id, name from account where id =:i];
    }
    }
    public Account getMyAccount() {
        return act;
    }
}