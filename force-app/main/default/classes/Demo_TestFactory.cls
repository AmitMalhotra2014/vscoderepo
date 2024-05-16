@isTest
public class Demo_TestFactory {
    public static account crateAccount() {
        Account act = new Account();
        act.name = 'TestAccount';
        insert act;
        return act;
    }
}