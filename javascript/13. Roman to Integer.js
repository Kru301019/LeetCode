function romanToint(s) {
    let rmn2intDict = { 'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000 };
    let res = 0
 
    for (let i = 0; i < s.length-1; i++) {
        if (rmn2intDict[s[i]] < rmn2intDict[s[i+1]]) {
            res -= rmn2intDict[s[i]]
        } else {
            res += rmn2intDict[s[i]] 
        }
      
    }
   
    return res += rmn2intDict[s.slice(-1,)]
    
}

let s = "MCMXCIV";
romanToint(s);
