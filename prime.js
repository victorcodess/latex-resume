// const findPrime = (n) => {
//     if (n < 2) return [];

//     const primeNumbers = [];
    
//     for (let i = 2; i <= n; i++) {
//         let isPrime = true;
//         for (let j = 2; j <= Math.sqrt(i); j++) {
//             if (i % j === 0) {
//                 isPrime = false;
//                 break;
//             }
//         }
//         if (isPrime) primeNumbers.push(i);
//     }

//     return primeNumbers;
// }

// console.log(findPrime(1000))

function groupAnagrams(strs) {
    const result = [];
    const grouped = new Set();

    for (let i = 0; i < strs.length; i++) {
        if (grouped.has(i)) continue;

        const currStr = strs[i];

        const currAnagrams = [currStr];
        grouped.add(i);

        for (let j = i + 1; j < strs.length; j++) {
            if (grouped.has(j)) continue;
        
            if (isAnagram(currStr, strs[j])) {
                currAnagrams.push(strs[j]);
                grouped.add(j);
            }
        }

        result.push(currAnagrams);
    }

    return result;
}

function isAnagram(currStr, nextStr) {
    if (currStr.length !== nextStr.length) return false;

    const strMap = new Map();

    for (let char of currStr) {
        strMap.set(char, (strMap.get(char) || 0) + 1);
    }

    for (let char of nextStr) {
        if (!strMap.has(char)) return false;

        const freq = strMap.get(char);

        if (freq > 1) {
            strMap.set(char, freq - 1);
        } else {
            strMap.delete(char);
        }

    }

    return strMap.size === 0;
}

// function findAnagrams(currStr, strs, grouped) {
//     const found = [];

//     for (let nextStr of strs) {
//         if (grouped.has(nextStr)) continue;
        
//         if (isAnagram(currStr, nextStr)) {
//             found.push(nextStr);
//             grouped.add(nextStr);
//         }
//     }

//     return found;
// }


// console.log(groupAnagrams(["","","",""]))
// console.log(isAnagram("ab", "ac"))
let strn = "Was it a car or a cat I saw?1";
// strn.sort();
// console.log(strn.split("").sort().join(""))
const newArr = new Array(3)

console.log(strn.toLowerCase())