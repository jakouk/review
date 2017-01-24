//
//  MergeSort.m
//  mergeSort
//
//  Created by jakouk on 2017. 1. 11..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

- (NSMutableArray *)mergeSort:(NSArray *)beforeSortedArray {
    
    NSMutableArray *sortedArray = [[NSMutableArray alloc] initWithArray:beforeSortedArray];
    NSInteger arrayCount = sortedArray.count;
    
    if (arrayCount < 2) {
        
        return sortedArray;
        
    }
    
    NSRange arrayRange;
    arrayRange.location = 0;
    arrayRange.length = arrayCount /2;
        
    NSMutableArray *leftArray = [[NSMutableArray alloc] initWithArray:[sortedArray subarrayWithRange:arrayRange]];
        
    arrayRange.location = arrayCount /2;
    arrayRange.length = arrayCount - 1;
        
    NSMutableArray *rightArray = [[NSMutableArray alloc] initWithArray:[sortedArray subarrayWithRange:arrayRange]];

    return [self mergeLeftList:leftArray rightList:rightArray];
}

-(NSMutableArray *)mergeLeftList:(NSMutableArray *)lList rightList:(NSMutableArray *)rList {
    
    
    
    
    
}

@end
