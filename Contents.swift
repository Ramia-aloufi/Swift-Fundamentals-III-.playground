import UIKit

var myArray = [Int]()
for i in 1...255{
    myArray.append(i)
}

var num = 1
var index = 0

repeat{
    let num1 = Int(arc4random_uniform(UInt32(myArray.count)))
    let num2 = Int(arc4random_uniform(UInt32(myArray.count)))
    myArray.swapAt(num1, num2)
    num += 1
}while num <= 100

for i in myArray.indices{
    if myArray[i] == 42{
        index = i
    }
}

myArray.remove(at: index)
print(" from the array and PrintWe found the answer to the Ultimate Question of Life, the Universe, and Everything at index\(index)" )
print(myArray)

