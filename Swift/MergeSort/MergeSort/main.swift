//
//  main.swift
//  MergeSort
//
//  Created by jakouk on 2017. 2. 14..
//  Copyright © 2017년 jakouk. All rights reserved.
//

import Foundation

var array : Array<Int> = [ 10, 9, 7, 8, 5, 6, 4, 3, 1, 2]

func mergeSort<T : Integer>(arr : [T]) -> [T] {
    
    var unsortedArray = arr
    let unsortedCount = unsortedArray.count
    
    if (unsortedCount < 2) {
        return arr
    }
    
    var firstArray: [T] = [T]()
    var secondArray: [T] = [T]()
    
    for i in 0..<unsortedCount {
        
        if i < unsortedCount/2 {
            firstArray.append(unsortedArray.removeFirst())
        } else {
            secondArray.append(unsortedArray.removeFirst())
        }
    }
    
    return merge(leftArray: mergeSort(arr: firstArray), rightArray: mergeSort(arr: secondArray))
}

func merge<T : Integer>(leftArray: [T], rightArray: [T]) -> [T] {
    
    var sortedArray: [T] = [T]()
    var firstArray = leftArray
    var secondArray = rightArray
    
    while firstArray.count != 0 || secondArray.count != 0 {
        
        if firstArray.count == 0 {
            
            sortedArray.append(secondArray.removeFirst())
            
        } else if secondArray.count == 0 {
            
            sortedArray.append(firstArray.removeFirst())
            
        } else {
            
            if firstArray[0] < secondArray[0] {
                
                sortedArray.append(firstArray.removeFirst())
                
            } else if firstArray[0] > secondArray[0] {
                
                sortedArray.append(secondArray.removeFirst())
                
            } else {
                
                sortedArray.append(firstArray.removeFirst())
                sortedArray.append(secondArray.removeFirst())
                
            }
        }
    }
    
    return sortedArray
}

print(mergeSort(arr: array))
