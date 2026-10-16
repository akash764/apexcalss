@isTest
private class StringUtilityTest {
    
    @isTest
    static void testReverseString() {
        String nullResult = StringUtility.reverseString(null);
        String reversed = StringUtility.reverseString('hello');
        
        System.assertEquals(null, nullResult, 'Null input should return null');
        System.assertEquals('olleh', reversed, 'hello reversed should be olleh');
    }
    
    @isTest
    static void testIsPalindrome() {
        Boolean nullResult = StringUtility.isPalindrome(null);
        Boolean isPalindrome = StringUtility.isPalindrome('Madam');
        Boolean notPalindrome = StringUtility.isPalindrome('Apex');
        
        System.assertEquals(false, nullResult, 'Null input should return false');
        System.assertEquals(true, isPalindrome, 'Madam should be recognized as a palindrome');
        System.assertEquals(false, notPalindrome, 'Apex is not a palindrome');
    }
}