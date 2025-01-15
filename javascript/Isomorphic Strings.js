function Isomorphic_Strings(s, t) {
    let dict = {};
    let i = 0
    for (char of s){
        if (!(char in dict)){
            dict[char] = t[i];
        } else {
            if(dict[char] != t[i]){return false};
        }
        i++;
    }
    return true;
};

let s = "foo";
let t = "bar";
Isomorphic_Strings(s ,t)
