function validAnagram(s1, s2) {
    countDict = {};
    for (char of s1){
        if (!(char in countDict)) {countDict[char] = 1}
        else{countDict[char]++}
    };
    
    for (char of s2){
        if(!(char in countDict)){return false}
        else{
            countDict[char]--
            if (countDict[char]==0){delete  countDict[char]}
        }
    };
    if (Object.keys(countDict).length ===0){return true}
};

let s = "anagram";
let t = "nagaram";
validAnagram(s, t)