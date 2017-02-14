//
//  quickSort.m
//  quickSort
//
//  Created by jakouk on 2017. 2. 4..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

- (NSArray *)quickSort:(NSArray *)unSortedArray {
    
    NSMutableArray *unSortedMutable = [[NSMutableArray alloc] initWithArray:unSortedArray];
    
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    
    NSMutableArray *lessArray = [[NSMutableArray alloc] init];
    NSMutableArray *greateArray = [[NSMutableArray alloc] init];
    
    if (unSortedArray.count < 1) {
        return nil;
    }
    
    NSNumber *pivotValue = [[NSNumber alloc] init];
    
    pivotValue = unSortedArray[0];
    
    [unSortedMutable removeObjectAtIndex:0];
    
    for ( NSNumber *number in unSortedMutable ) {
        
        if ( [pivotValue integerValue] < [number integerValue] ) {
            
            [greateArray addObject:number];
            
        } else {
            
            [lessArray addObject:number];
        }
        
    }
    
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    
    [sortedArray addObject:pivotValue];
    
    [sortedArray addObjectsFromArray:[self quickSort:greateArray]];
    
    return sortedArray;
}

@end
