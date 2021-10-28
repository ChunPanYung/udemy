'use strict'
/*
Coding Challenge #4

Let's improve Steven's tip calculator even more, this time using loops!
Your tasks:
1. Create an array 'bills' containing all 10 test bill values
2. Create empty arrays for the tips and the totals ('tips' and 'totals')
3. Use the 'calcTip' function we wrote before (no need to repeat) to calculate
   tips and total values (bill + tip) for every bill value in the bills array. Use a for
   loop to perform the 10 calculations!

Test data: 22, 295, 176, 440, 37, 105, 10, 1100, 86 and 52

Hints: Call ‘calcTip ‘in the loop and use the push method to add values to the
tips and totals arrays 😉

Bonus:
4. Bonus: Write a function 'calcAverage' which takes an array called 'arr' as
   an argument. This function calculates the average of all numbers in the given
   array. This is a difficult challenge (we haven't done this before)! Here is how to
   solve it:
  4.1. First, you will need to add up all values in the array. To do the addition,
       start by creating a variable 'sum' that starts at 0. Then loop over the
       array using a for loop. In each iteration, add the current value to the
       'sum' variable. This way, by the end of the loop, you have all values
       added together
  4.2. To calculate the average, divide the sum you calculated before by the
       length of the array (because that's the number of elements)
  4.3. Call the function with the 'totals' array
*/

const calcTip = function (bill) {
  if (bill >= 50 && bill <= 300) {
    return bill * 3 / 20 // 15%
  } else {
    return bill / 5 // 20%
  }
}

// calculat the average in array
// args: array
// return: -1 if array is empty
const calcAverage = function (arr) {
  const LENGTH = arr.length
  // early return first element if array length is 1
  if (LENGTH === 1) {
    return arr[0]
  // early return 0 if array is empty
  } else if (LENGTH === 0) {
    return -1
  }

  // sum up all the numbers in the array
  let sum = arr[0]
  for (let i = 1; i < LENGTH; i++) {
    sum += arr[i]
  }
  // return average
  return sum / LENGTH
}

const bills = [22, 295, 176, 440, 37, 105, 10, 1100, 86, 52]
const billsLength = bills.length

const tips = new Array(billsLength)
const totals = new Array(billsLength)

// calclate tips and totals for all bills
for (let i = 0; i < billsLength; i++) {
  tips[i] = calcTip(bills[i])
  totals[i] = tips[i] + bills[i]
}

console.log(bills, tips, totals)
console.log(`Total Average: ${calcAverage(totals)}`)
