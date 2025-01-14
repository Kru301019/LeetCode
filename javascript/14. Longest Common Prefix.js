function Longest_Common_Prefix(strs) {
    
    stringLen = Math.min(...(strs.map(word => word.length))) - 1;
    let res = '';

    for (let i =0; i<=stringLen; i++){
        for (word of strs.slice(1)){
            if (word[i] != strs[0][i]){
                return res;
            };
        };
        res += strs[0][i];
    };
    return res
};

let strs = ["flower","flow","flight"];
console.log(Longest_Common_Prefix(strs));