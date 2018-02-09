// Allen ISD Computer Science Assignment
// Non-sequential Project | complexATM
// Rahul Singh
// Computer Science I, Period 1
// 2018.01.23


/*
  You're responsible for dispensing money from an ATM.  
  The ATM can only dispense $5 and $20 bills.
  
  The command line will specify the total dollar value to withdraw which must be 
  divisible by 5.
  You must print one line indicating that either a $5 or $20 bill was dispensed
  for each bill dispensed.

  For example, if the program is invoked as:  ./complexATM 75
  Your output should be:
  $20.00 dispensed
  $20.00 dispensed
  $20.00 dispensed
  $5.00 dispensed
  $5.00 dispensed
  $5.00 dispensed

  Include an assert statement for each assumption that you are making.
*/

// Continue with your code here

assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")

let dollarValueRequested = Int(CommandLine.arguments[1])!
assert(dollarValueRequested % 5 == 0, "Dollar value requested must be evenly divisible by $5.00")

func MoneyDeposit(MoneyDeposit:Int,  bill:Int) -> Int {

    let bills100 = dollarValueRequested/100
    let bills20 = dollarValueRequested - (bills100*20)/20
    let bills5 = (dollarValueRequested - bills100*100)/25

    
    var x = 0
    while (x < bills100){  
    print("$100.00 has been dispensed")
    x += 1
    }

    var  y = 0
    while (y < bills20){  
    print("$20.00 has been dispensed")
    y += 1
    }
    
    var z = 0
    while (z < bills5){
    print("$5.00 has been dispensed")
    z += 1
    }
    print("ATM will now dispense $20.00 and $5.00 bills to deliver the sum of $\(dollarValueRequested).00")
} 
    
  

 
  
