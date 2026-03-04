//
//  bigO.swift
//  DataStructures
//
//  Created by MUHAMMAD SALIH on 26/02/26.
//

import Foundation

// Big O indicates the `Scalability` or `Complexity` of an application. This analysis helps to do btter code

/**1. Big O(n)
 It's also known as `Liner Time. In this n indicates the how many steps require to complete the operation. When input count increase O(n) programs execution steps will increase.
 */


func findAvocado(_ fruitArray: [String]){
    for item in fruitArray{
        if item == "Avocado"{
            print("Avocado is present")
        }
    }
}

/**Big O(1)
 It's also known as `Constant Time. In this n indicates that this will takes constant time to execute if we provide any number of inputs.
 */

func logFirstFruit(_ fruitArray: [String]){
    print(fruitArray[0])
}
//The above function complexity is O(1) ---> It's an example of O(1)

func logTwoFruits(_ fruitArray: [String]){
    print(fruitArray[1])
    print(fruitArray[2])
}
//The above function complexity is O(2) ---> It's an example of O(1) because it take contant step to execute.

/*Big O(n^2)
 It's also known as Quadratic. Every element i a collection compares with another. Normally a two nested loop
 */

func arrayNestedElement(_ array1: [String],_ array2:[String]){
    array1.forEach{ item1 in
        array2.forEach{ item2 in
            print(item1, item2)
        }
    }
}


