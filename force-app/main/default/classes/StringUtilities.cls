public class StringUtilities {
    // Method to check if a string is a palindrome
    public static Boolean isPalindrome(String str) {
        if (String.isEmpty(str)) {
            return false;
        }
        String cleanStr = str.replaceAll('[^a-zA-Z0-9]', '').toLowerCase();
        return cleanStr == cleanStr.reverse();
    }

    // Method to reverse a string
    public static String reverse(String str) {
        if (String.isEmpty(str)) {
            return str;
        }
        return str.reverse();
    }

    // Method to count occurrences of a character in a string
    public static Integer countOccurrences(String str, String character) {
        if (String.isEmpty(str) || String.isEmpty(character)) {
            return 0;
        }
        Integer count = 0;
        for (Integer i = 0; i < str.length(); i++) {
            if (str.substring(i, i + 1) == character) {
                count++;
            }
        }
        return count;
    }

    // Method to convert a string to title case
    public static String toTitleCase(String str) {
        if (String.isEmpty(str)) {
            return str;
        }
        String[] words = str.split(' ');
        for (Integer i = 0; i < words.size(); i++) {
            if (words[i].length() > 0) {
                words[i] = words[i].substring(0, 1).toUpperCase() + words[i].substring(1).toLowerCase();
            }
        }
        return String.join(words, ' ');
    }
}