public class VowelCounter {
    public static Integer countVowels(String input) {
        if (String.isBlank(input)) {
            return 0;
        }
        
        Integer count = 0;
        String lowerInput = input.toLowerCase();
        Set<String> vowels = new Set<String>{'a', 'e', 'i', 'o', 'u'};
        
        for (Integer i = 0; i < lowerInput.length(); i++) {
            if (vowels.contains(lowerInput.substring(i, i + 1))) {
                count++;
            }
        }
        
        return count;
    }
}