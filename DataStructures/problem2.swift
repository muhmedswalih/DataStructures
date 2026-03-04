//
//  problem2.swift
//  DataStructures
//
//  Created by MUHAMMAD SALIH on 26/02/26.
//
import Foundation

/**Write a function to check a pair with sum **/
//0>array.count<100

func hasPairWithSum(_ array: [Int],_ sum: Int) -> Bool{
    let len = array.count
    var setValue = Set<Int>()
    
    if(len>=2){
        for element in array{
            if(setValue.contains(element)){
                return true
            }
            setValue.insert(sum-element)
        }
        return false
    }else{
        return false
    }
}
