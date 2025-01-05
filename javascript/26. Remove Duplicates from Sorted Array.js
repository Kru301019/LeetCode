function Remove_Duplicate(nums){
    j = 0
    for (let i=0; i<nums.length-1; i++) {
        if (nums[i] != nums[i + 1]) {
            nums[j] = nums[i]
            j += 1
        }
    }
    let result = nums.slice(0,j)
   
    if (result.at(-1), nums.at(-1)){
        result.push(nums.at(-1))
        j += 1
    }
    return result.slice(0, j);
    
};

let nums = [0,0,1,1,1,2,2,3,3,4]
Remove_Duplicate(nums)