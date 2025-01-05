function top_k_Elem(nums, k) {
    
    let myDict = {};
    let valOfDict = [];
    
    for (let num of nums){
        if (!(num in myDict)){
            myDict[num] = 1
            
        } else {
            myDict[num] += 1
        }
    }
    for (let [key, value] of Object.entries(myDict)) {
        valOfDict.push(value)
    }
    let result = []
    valOfDict.sort()
    for (let val of valOfDict.slice(-2)){
        for (let [key, value] of Object.entries(myDict)){
            if (val == value){
                result.push(key)
            }
        }
    }
    console.log(result)
} 

let nums = [1,3,3,3,3,2,2,5,5,5,5]
let k = 2
top_k_Elem(nums, k)