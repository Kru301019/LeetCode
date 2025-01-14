    function lenOfLastWord(strings){
    
        let res = '';
        let flag = false

        for(let i = strings.length-1; i>=0; i--){
            if (strings[i] != ' ' && !flag){flag = true}
            
            if (strings[i] == ' ' && flag){break}
            
            if (flag){res += strings[i]}
            
        }
        return [...res].reverse().join('');
        
    };

    let s = "the moon  ";
    lenOfLastWord(s);