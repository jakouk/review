//
//  main.swift
//  QuickSort
//
//  Created by jakouk on 2017. 2. 14..
//  Copyright © 2017년 jakouk. All rights reserved.
//

import Foundation

var array : Array<Int> = [ 10, 9, 7, 8, 5, 6, 4, 3, 1, 2]

func quickSort( arr : inout [Int]) -> [Int] {
    
    let arrCount = arr.count
    
    if ( arrCount < 2 ) {
        return arr
    }
    
    var leftArray: Array<Int> = [Int]()
    var rightArray: Array<Int> = [Int]()
    var sortedArray: Array<Int> = [Int]()
    let pivot: Int = arr[0]
    arr.remove(at: 0)
    
    for i in 0..<arrCount-1 {
        if pivot >= arr[i] {
            leftArray.append(arr[i])
        } else {
            rightArray.append(arr[i])
        }
    }
  
    sortedArray.append(contentsOf: quickSort(arr: &leftArray))
    sortedArray.append(pivot)
    sortedArray.append(contentsOf: quickSort(arr: &rightArray))
    
    return sortedArray
}

print(quickSort(arr: &array))
