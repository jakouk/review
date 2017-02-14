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
    
    let arrCount = arr.count
    
    if (arrCount < 2) {
        return arr
    }
    
    var firstArray: [T] = [T]()
    var secondArray: [T] = [T]()
    
    for i in 0..<arrCount {
        if i < arrCount/2 {
            firstArray.append(arr[i])
        } else {
            secondArray.append(arr[i])
        }
    }
    
    return mergeSortedCompareable(leftArray: mergeSort(arr: firstArray), rightArray: mergeSort(arr: secondArray))
}

func mergeSortedCompareable<T : Integer>(leftArray: [T], rightArray: [T]) -> [T] {
    
    var sortedArray: [T] = [T]()
    var firstArray = leftArray
    var secondArray = rightArray
    
    while firstArray.count != 0 || secondArray.count != 0 {
        
        if firstArray.count == 0 {
            
            sortedArray.append(secondArray[0])
            secondArray.remove(at: 0)
            
        } else if secondArray.count == 0 {
            
            sortedArray.append(firstArray[0])
            firstArray.remove(at: 0)
            
        } else {
            
            if firstArray[0] < secondArray[0] {
                
                sortedArray.append(firstArray[0])
                firstArray.remove(at: 0)
                
            } else if firstArray[0] > secondArray[0] {
                
                sortedArray.append(secondArray[0])
                secondArray.remove(at: 0)
                
            } else {
                
                sortedArray.append(firstArray[0])
                sortedArray.append(secondArray[0])
                firstArray.remove(at: 0)
                secondArray.remove(at: 0)
                
            }
            
        }
    }
   
    
    
    return sortedArray
}

print(mergeSort(arr: array))
