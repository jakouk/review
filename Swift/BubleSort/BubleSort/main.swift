//
//  main.swift
//  BubleSort
//
//  Created by jakouk on 2017. 2. 14..
//  Copyright © 2017년 jakouk. All rights reserved.
//

import Foundation

print("Hello, World!")

var array : Array<Int> = [ 10, 9, 7, 8, 5, 6, 4, 3, 1, 2]

func bubleSort( arr: inout [Int]) -> [Int] {
    
    var count: Int = arr.count - 2
    
    repeat {
        for j in 0...count {
            if arr[j] > arr[j+1]  {
                swap(&arr[j], &arr[j+1])
            }
            
        }
        count -= 1
    } while ( count != 0 )
    
    return arr
}

let sortedArray = bubleSort(arr: &array)
print(sortedArray)
