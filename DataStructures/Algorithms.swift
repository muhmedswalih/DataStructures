//
//  Algorithms.swift
//  DataStructures
//
//  Created by MUHAMMAD SALIH on 05/03/26.
//

class AlAlgorithms{
    func getFactorial(_ value:Int) -> Int {
        if(value == 2){
            return 2
        }else{
            return value*getFactorial(value-1)
        }
    }
    
    func fibanocii(_ n:Int) -> Int {
        if(n < 2){
           return n
        }else{
           return   fibanocii(n-1) + fibanocii(n-2)
        }
    }
    
    func getFibnociiSeries(_ limit:Int) -> () {
        var f1 = 0
        var f2 = 1
        print(f1)
        for _ in 1...limit{
            print(f2)
            let next = f1 + f2
            f1 = f2
            f2 = next
        }
    }
    
    func reverseString(_ s: inout [Character]) {

           var count = s.count
           
          func reverseString(_ s: inout [Character], count: inout Int) {
           guard count > 0 else {return}

               if let last = s.popLast() {
                   count -= 1
                   s.insert(last, at: s.count - count)
                   reverseString(&s, count: &count)
               }
           }
           
           reverseString(&s, count: &count)
            print(String(s))
       }
    
    func quickSort<T: Comparable>(_ array: [T]) -> [T] {
        if array.count < 2 {
            return array
        }

        let pivot = array[0]
        //print("pivot : \(pivot)")
        
        let smaller = array.filter { $0 < pivot }
        let larger = array.filter { $0 > pivot }

        let result = quickSort(smaller) + [pivot] + quickSort(larger)
       // print("result : \(result)")
      
        return result
    }
}
