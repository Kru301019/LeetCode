function removeElem(myArray, val){
   
    let slow = 0
   
    for (let i=0; i<myArray.length; i++){
        if (myArray[i] != val){
            [myArray[slow], myArray[i]] = [myArray[i], myArray[slow]]
            slow += 1
        }

        
    }
    return myArray.slice(0,slow)
}

let myArray = [0,1,2,2,3,0,4,2]
let val = 2
removeElem(myArray, val)