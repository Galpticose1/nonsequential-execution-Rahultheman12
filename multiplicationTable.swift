// Allen ISD Computer Science Assignment
// Non-sequential Project | multiplicationTable
// Rahul Singh
// Computer Science I, Period 1
// 2018.01.29


/*
  You're responsible for printing a grid displaying a multiplication table.
  The single argument on the command line will specify the size of the grid.
  For example, if the program is invoked as:, ./multiplicationTable 3 
  Your output should be:
       1   2   3
  1    1   2   3
  2    2   4   6
  3    3   6   9

  You may assume that the maximum grid size is 20.

  Be sure that the numbers in your grid are aligned (i.e. columns are flush right)
  For example:
      3
      6
      9
     12

  Include an assert statement for each assumption that you are making.

*/

// Continue with your code here
assert(CommandLine.arguments.count > 1, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")


let gs = Int( CommandLine.arguments[1])
assert(gs! > 0 && gs! <= 20, "Argument value must be between 1 and 20")

var x = 1
repeat {
    if x == 1 { print("  ", terminator:"")}
    print("  ", terminator: "")
    x = x + 1
}while (x <= gs! )
print()

var y = 0

x = 1
repeat {
    print(x, terminator: "  ")
    y = 1
    repeat {
        if (x*y >= 10) {
            print(" ", terminator: "")
        }
        
        print(x*y, terminator: "  ")
        y = y + 1
    } while (y <= gs! )
    print()
    x = x + 1
} while (x <= gs! )
print()
