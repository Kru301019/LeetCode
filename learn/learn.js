let numberList = [1, 2, 3, 4, 5];
let numberString = numberList.join('-'); // "1-2-3-4-5"
console.log('hello world');

// This is a single-line comment
let name = "Krutarth"; // Declare a variable with your name

/* 
   This is a multi-line comment.
   You can use it to explain complex logic
   or to temporarily disable large blocks of code.
*/
let age = 25; 

let s = 'lvii';
for (let char of s) {
   console.log(char); // Access and print each character
}

let strings = "hello ";
let count = strings.slice(-1) === ' ' ? 1 : 0;
console.log(count); // Output: 1

strings = "hello";
count = strings.slice(-1) === ' ' ? 1 : 0;
console.log(count); // Output: 0
strings = strings.trim();

let arr = [6, 4, 6];
let minValue = Math.min(...arr);
console.log(minValue); // Output: 4

let numbers = [10, 20, 30];

// Create an array of strings with the index included
let indexedNumbers = numbers.map((num, index) => `Index: ${index}, Value: ${num}`);

console.log(indexedNumbers);
// Output: [
//   "Index: 0, Value: 10",
//   "Index: 1, Value: 20",
//   "Index: 2, Value: 30"
// ]

let mystrings = ["apple", "banana", "cherry"];

// Convert all strings to uppercase
let upperCaseStrings = strings.map(str => str.toUpperCase());

console.log(upperCaseStrings);  // Output: ["APPLE", "BANANA", "CHERRY"]

let products = [
   { name: "Laptop", price: 1000 },
   { name: "Phone", price: 800 },
   { name: "Tablet", price: 500 }
];

// Apply a 10% discount on all products' prices
let discountedProducts = products.map(product => ({
   name: product.name,
   price: product.price * 0.9
}));

console.log(discountedProducts);
// Output: [
//   { name: "Laptop", price: 900 },
//   { name: "Phone", price: 720 },
//   { name: "Tablet", price: 450 }
// ]
let words = ["apple", "banana", "cherry", "date", "elderberry"];

// Filter words that contain the letter 'a'
let wordsWithA = words.filter(word => word.includes("a"));

console.log(wordsWithA);  // Output: ["apple", "banana", "date"]

//Default Value Assignment (Fallback): The || operator is frequently used to assign default values to variables when the original value is undefined, null, or any other falsy value (e.g., 0, NaN, "").
let userAge = null;
let age1 = userAge || 18;  // If userAge is falsy (null), age will be assigned 18.
console.log(age);  // Output: 18

let i = 0;
while (i < nums.length) {
    if (target < nums[i]) {
        i++;      // Increment i when the condition is true
        continue; // Skip the rest of the loop and move to the next iteration
    }
    i++; // Continue incrementing i as needed
}

function countWords(sentence) {
   let wordMap = new Map();
   let words = sentence.split(' ');

   for (let word of words) {
       word = word.toLowerCase();
       wordMap.set(word, (wordMap.get(word) || 0) + 1);
   }

   return wordMap;
}

let result = countWords("Hello world hello map");
console.log(result);
// Output: Map(3) { 'hello' => 2, 'world' => 1, 'map' => 1 }

let num = 123;
let str = num.toString();
console.log(str); // Output: "123"
console.log(typeof str); // Output: "string"

let num = 5;
let squared = num ** 2;
console.log(squared); // Output: 25
