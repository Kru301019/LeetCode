function getSqred(sqreArr){
    sqreArr = sqreArr.toString().split('');
    let local = 0;
    for (number of sqreArr){
        local += number**2;
    }
    return local;
  
}

function happyNum(nums){
    originNum = nums
    while (nums){
        nums = getSqred(nums);
        if (nums == 1) return true;
        if (nums == originNum) return false; 
    }
    
};

let nums = 19;
console.log(happyNum(nums));