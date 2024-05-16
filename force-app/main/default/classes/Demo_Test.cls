@isTest
private class Demo_Test {

   @testSetup static void doSetup() {
        Account ac = new Account();
        ac.name='Test Account';
        insert ac;
    }


    public static testMethod void doTest() {
        Demo d = new Demo();
        d.sayHello();
        integer r = d.sum(10,10);
        System.assertEquals(20,r,'Not an Expected outcome');
        Test.startTest();
            Account act = Demo_TestFactory.crateAccount();       
            Account a = [select id, name from account where name =: act.name];
            d.updateAccount(a);
        Test.stopTest();
   
   
    }
}