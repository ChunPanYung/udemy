/*
Mark and John are trying to compare their BMI (Body Mass Index), 
which is calculated using the formula:

BMI = mass / height ** 2 = mass / (height * height)(mass in kg and height in meter).

Your tasks:
1. Store Mark's and John's mass and height in variables
2. Calculate both their BMIs using the formula (you can even implement both versions)
3. Create a Booleanvariable 'markHigherBMI'containing information 
   about whether Mark has a higher BMI than John.

Test data:
* Data 1: Marks weights 78 kg and is 1.69 m tall. John weights 92 kg and is 1.95 m tall.
* Data 2: Marks weights 95 kg and is 1.88 m tall. John weights 85 kg and is 1.76 m tall.
*

=====

Use the BMI example from Challenge #1, and the code you already wrote, and
improve it.

Your tasks:
1. Print a nice output to the console, saying who has the higher BMI. The message
   is either "Mark's BMI is higher than John's!" or "John's BMI is higher than Mark's!"
2. Use a template literal to include the BMI values in the outputs. Example: "Mark's
   BMI (28.3) is higher than John's (23.9)!"
   Hint: Use an if/else statement 😉

*/


// mass is in kg, height is in meters
function calculateBMI(mass, height) {
    return mass / (height * height)
}

function compareBMI(mass1, height1, mass2, height2) {

    let markBMI = calculateBMI(mass1, height1) 
    let johnBMI = calculateBMI(mass2, height2)

    console.log(`Mark BMI: ${markBMI}`)
    console.log(`John BMI: ${johnBMI}`)

    if (markBMI > johnBMI) {
        console.log(`Mark's BMI(${markBMI}) is higher than John's(${johnBMI})!`)
    } else if (johnBMI > markBMI) {
        console.log(`John's BMI(${johnBMI}) is higher than Mark's(${markBMI})!`)
    } else {
        console.log(`They are both equal(${johnBMI})!`)
    }
}


console.log('=== Data 1 ===')
compareBMI(78, 1.69, 92, 1.95)


console.log('=== Data 2 ===')
compareBMI(95, 1.88, 85, 1.76)
