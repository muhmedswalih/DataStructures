//
//  DSArray.swift
//  DataStructures
//
//  Created by MUHAMMAD SALIH on 26/02/26.
//
import Foundation

func arrayOperations() -> Void{
    var fruits: [String] = ["Apple","Orange", "Mango"]
    print(fruits)
    fruits.append("Banana")
    print(fruits)
    
    fruits.removeLast()
    print(fruits)
}

struct AJArray{
    var length : Int
    var data : [Int: String]
    init(){
        length = 0
        data = [:]
    }
    
    //Add new Item to an array
    @discardableResult
    mutating func push(_ newElement:String)->Int{
            self.data[length] = newElement
            self.length += 1
            return self.length
        }
    
    //get an Item from the array
    func getItem(_ index: Int) -> String{
        guard let element = data[index] else {return "Array is empty"}
        return element
    }
    
    //Pop an Item from the array
    @discardableResult
    mutating func pop() -> String?{
        guard let element = data[length-1] else {return nil}
        self.length-=1
        data.removeValue(forKey: length)
        return element
    }
    
    //delete an item at index
    @discardableResult
    mutating func delete(_ index: Int) -> String?{
        guard let itemToDelete = data[index] else {return nil}
        shiftIndices(index)
        return itemToDelete
    }
    mutating func shiftIndices(_ fromIndex: Int) -> (){
        for i in fromIndex ..< length-1{
            data[i] = data[i+1]
        }
        self.pop()
    }
    
}

func arrayAcations(){
    var array = AJArray.init()
    print(array.getItem(0))
    array.push("Salih")
    array.push("Anu")
    print(array)
    print(array.getItem(1))
    array.push("Emmanuel")
    print(array.pop() ?? "empty")
    print(array)
    array.push("Jose")
    array.push("Lissy")
    array.delete(1)
    print(array)
 }
    
