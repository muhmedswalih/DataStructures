//
//  StackArray.swift
//  DataStructures
//
//  Created by MUHAMMAD SALIH on 05/03/26.
//

import Foundation

func stackArrayOps() -> Void{
    print("---Stack Array---")
}
class StackArray{
    var arr:[String] = []
    func push(_ value:String) -> () {
        arr.append(value)
    }
    func pop() -> String {
        return arr.popLast() ?? "Stackis empty"
    }
}
