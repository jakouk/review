//
//  MiniHeap.m
//  Heap
//
//  Created by jakouk on 2017. 1. 1..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "MiniHeap.h"

@implementation MiniHeap

- (instancetype)initWithMiniHeapCapacity:(NSInteger)capacity
{
    self = [super init];
    if (self) {
        self.miniHeap = [[NSMutableArray alloc] init];
    }
    
    self.capacity = capacity;
    self.usedSize = 0;
    return self;
}


- (void)insertHeapNumber:(NSInteger)insertNumber {
    
    NSInteger usedPosition = self.usedSize;
    NSInteger parentPosition = (usedPosition - 1)/2;
    
    if ( self.usedSize == self.capacity ) {
        
        NSLog(@"Heap이 가득 찼습니다.");
        return ;
    }
    
    NSNumber *insertNum = [[NSNumber alloc] initWithInteger:insertNumber];
    [self.miniHeap addObject:insertNum];
    
    while ( usedPosition > 0 && [self.miniHeap[usedPosition] integerValue] < [self.miniHeap[parentPosition] integerValue] ) {
        
        [self.miniHeap exchangeObjectAtIndex:usedPosition withObjectAtIndex:parentPosition];
        usedPosition = parentPosition;
        parentPosition = (usedPosition - 1) /2;
        
    }
    
    self.usedSize += 1;
}


- (void)extractMinHeap{
    
    if ( self.usedSize == 0 ) {
        
        return ;
    }
    
    NSInteger parnentPosition = 0;
    NSInteger leftPosition = 1;
    NSInteger rightPosition = 2;
    
    self.usedSize -- ;
    
    [self.miniHeap exchangeObjectAtIndex:0 withObjectAtIndex:self.usedSize];
    [self.miniHeap removeObjectAtIndex:self.usedSize];
    
    while (YES) {
        
        NSInteger selectChild = 0;
        
        if ( leftPosition >= self.usedSize ) break;
        
        if ( rightPosition >= self.usedSize ) {
            selectChild = leftPosition;
        }else {
            
            if ( [self.miniHeap[leftPosition] integerValue] > [self.miniHeap[rightPosition] integerValue] ) {
                selectChild = rightPosition;
            }else {
                selectChild = leftPosition;
            }
        }
        
        if ( [self.miniHeap[selectChild] integerValue] < [self.miniHeap[parnentPosition] integerValue] ) {
                [self.miniHeap exchangeObjectAtIndex:parnentPosition withObjectAtIndex:selectChild];
                parnentPosition = selectChild;
        } else {
                break;
        }
            leftPosition = 2 * parnentPosition + 1;
            rightPosition = leftPosition + 1;
    }
}


- (void)outPut {
    for (NSInteger i = 0; i <self.usedSize; i ++) {
        NSLog(@"%@",self.miniHeap[i]);
    }
}

@end
