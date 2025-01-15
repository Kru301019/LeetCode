function Ransom_Note(ransomNote, magazine){
    ransomNote = ransomNote.split('');
    magazine = magazine.split('');
    
    for (let i =0; i <magazine.length; i++){
            if (!(ransomNote.includes(magazine[i]))){
                return false;
            }
            if (magazine[i] == ransomNote[0]){
                ransomNote.shift();
            }
            if (ransomNote.length === 0){break};
    }
    console.log(ransomNote)
};

let ransomNote = "aab";
let magazine = "aba";
Ransom_Note(ransomNote, magazine)