function worldPattern(pattern, s) {
     let dict = {};
     let j = 0;
     let seen =[];
     s = s.split(' ');
     pattern = pattern.split('');

     for (char of pattern) {
          if (!(char in dict)) {
               if (seen.includes(s[j])){return false};
               dict[char] = s[j];
               seen.push(s[j]);
          } else {
               
               if (dict[char] != s[j]){return false;}
          }
          j++;
     };
    
};

let pattern = "abba";
let s = "dog dog dog dog";
worldPattern(pattern, s);