//
//  main.swift
//  ArrayFiddling
//
//  Created by Larry Mcdowell on 7/27/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import Foundation

var array = [1,2,8,4,5,6]

func rotateArray(tempArray: inout [Int], steps: Int){
    for _ in 0..<steps{
        let x = tempArray.removeLast()
        tempArray.insert(x, at: 0)
    }
}

func printArrayToString(arrayToPrint x: [Int]) -> String{
    var out = "["
    for i in 0..<x.count{
        out += "\(x[i]),"
    }
    out += "]"
    return out
}

func printArrayToConsole(arrayToPrint array: [Int]){
    var outputString = "["
    for index in 0..<array.count{
        outputString += "\(array[index]),"
    }
    outputString += "]"
    print(outputString)
}

print("This demonstrates basics for frequent review of Git")
print("for branching and merging practice")

rotateArray(tempArray: &array, steps: 3 )

print(printArrayToString(arrayToPrint:array))
//more direct method with new function
//printArrayToConsole(arrayToPrint: array)
