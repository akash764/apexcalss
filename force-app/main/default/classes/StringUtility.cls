public class StringUtility {
    // Method to reverse a string
    public static String reverseString(String input) {
        if (input == null) return null;
        String reversed = '';
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.substring(i, i + 1);
        }
        return reversed;
    }
    
    // Method to check if a string is a palindrome
    public static Boolean isPalindrome(String input) {
        if (input == null) return false;
        String reversed = reverseString(input);
        return input.equalsIgnoreCase(reversed);
    }
}