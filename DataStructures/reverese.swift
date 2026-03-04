//
//  reverese.swift
//  DataStructures
//
//  Created by MUHAMMAD SALIH on 26/02/26.
//
import Foundation

func reverseAString(_ string: String) -> String{
    var str = ""
    for character in string.enumerated(){
        str = "\(character.element)" + str
    }
    print(str)
    return str
}

func revAString(_ string: String) -> String{
    return String(string.reversed())
}
