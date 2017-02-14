//
//  MergeSort.m
//  mergeSort
//
//  Created by jakouk on 2017. 1. 11..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

- (NSArray *)mergeSort:(NSArray *)beforeSortedArray {
    
    if (beforeSortedArray.count < 2) {
        
        return beforeSortedArray;
        
    }
    
    NSInteger centerIndex = beforeSortedArray.count/2;
    
    //left
    NSRange lRange = NSMakeRange(0, centerIndex);
    NSArray *leftList = [beforeSortedArray subarrayWithRange:lRange];
    
    //right
    NSRange rRange = NSMakeRange(centerIndex, beforeSortedArray.count-centerIndex);
    NSArray *rightList = [beforeSortedArray subarrayWithRange:rRange];

    return [self mergeLeftList:[self mergeSort:leftList] rightList:[self mergeSort:rightList]];
}

-(NSArray *)mergeLeftList:(NSArray *)lList rightList:(NSArray *)rList {
    
    NSMutableArray *leftUnSorted = [[NSMutableArray alloc] initWithArray:lList];
    NSMutableArray *rightUnSorted = [[NSMutableArray alloc] initWithArray:rList];
    
    NSMutableArray *sortedList = [[NSMutableArray alloc] init];
    
    while ( leftUnSorted.count != 0 || rightUnSorted.count != 0 ) {
        
        if ( leftUnSorted.count == 0 ) {
            
            [sortedList addObject:rightUnSorted[0]];
            [rightUnSorted removeObjectAtIndex:0];
            
        } else if ( rightUnSorted.count == 0 ) {
            
            [sortedList addObject:leftUnSorted[0]];
            [leftUnSorted removeObjectAtIndex:0];
            
        } else {
            NSInteger leftValue = [leftUnSorted[0] integerValue];
            NSInteger rightValue = [rightUnSorted[0] integerValue];
            
            if ( leftValue > rightValue ) {
                
                [sortedList addObject:rightUnSorted[0]];
                [rightUnSorted removeObjectAtIndex:0];
                
            } else if ( leftValue < rightValue ) {
                
                [sortedList addObject:leftUnSorted[0]];
                [leftUnSorted removeObjectAtIndex:0];
                
            } else {
                
                [sortedList addObject:rightUnSorted[0]];
                [rightUnSorted removeObjectAtIndex:0];
                [sortedList addObject:leftUnSorted[0]];
                [leftUnSorted removeObjectAtIndex:0];
                
            }
        }
    }
    
    return sortedList;
}

@end
