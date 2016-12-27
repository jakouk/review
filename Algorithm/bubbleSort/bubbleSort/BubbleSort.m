//
//  BubbleSort.m
//  bubbleSort
//
//  Created by jakouk on 2016. 12. 27..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

- (NSArray *)bubbleSort:(NSArray *)array {
    
    NSMutableArray *sortedArray = [[NSMutableArray alloc] initWithArray:array];
    
    NSInteger arrayCount = sortedArray.count;
    NSInteger bubbleCount = arrayCount;
    
    for (NSInteger i = 0; i <arrayCount; i ++) {
        
        for (NSInteger i = 0; i < bubbleCount-1; i ++ ) {
            
            NSNumber *beforeNumber = sortedArray[i];
            NSNumber *afterNumber = sortedArray[i+1];
            
            NSInteger beforeNum = [beforeNumber integerValue];
            NSInteger afterNum = [afterNumber integerValue];
            
            if ( beforeNum > afterNum ) {
                
                [sortedArray removeObjectAtIndex:i+1];
                [sortedArray insertObject:afterNumber atIndex:i];
            }
        }
        
        bubbleCount = bubbleCount -1;
        
        NSLog(@"arrayCount = %ld",bubbleCount);
        
    }

    return sortedArray;
}

@end
