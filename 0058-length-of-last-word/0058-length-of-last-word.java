class Solution {
    public int lengthOfLastWord(String s) {
        // Trim the string to remove leading and trailing spaces
        s = s.trim();
        
        // Find the index of the last space character
        int lastSpaceIndex = s.lastIndexOf(' ');
        
        // Calculate the length of the last word
        return s.length() - (lastSpaceIndex + 1);
    }
}
