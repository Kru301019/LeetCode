function validAnagram(s1, s2) {
    countDict = {};
    for (char of s1){
        countDict[char] = (countDict[char] || 0) + 1;
    };
    
    for (char of s2){
        if(!(char in countDict))return false
        else{
            countDict[char]--
            if (countDict[char]==0) delete  countDict[char]
        }
    };
    return Object.keys(countDict).length ===0
};

let s = "anagram";
let t = "nagaram";
validAnagram(s, t)