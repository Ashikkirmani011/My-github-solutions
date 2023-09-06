class Solution {
    public int lengthOfLongestSubstring(String s) {
        int currentLongest = 0, idx = 0;

        if (s.length() <= 1){ return s.length(); }

        for (int i=1; i<s.length(); i++){
            String str = s.substring(idx, i);  //substring up to current char (exclusive)
            int strLen = str.length();
            int idxOf = str.indexOf(s.charAt(i));  //check if current char is in the substring

            if (idxOf != -1){  //if contains duplicate
                if (strLen > currentLongest){
                    currentLongest = strLen;  //replace if it is the longest substring seen
                }
                idx += idxOf+1; //move front pointer after idxOf.
            }

            if (i == s.length() -1){  // if last iteration, do final check inclusive of last char
                strLen = s.substring(idx, i+1).length();
                if (strLen > currentLongest){
                    currentLongest = strLen;
                }
            }
        }
        return currentLongest;
    }
}