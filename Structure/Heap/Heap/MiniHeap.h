//
//  MiniHeap.h
//  Heap
//
//  Created by jakouk on 2017. 1. 1..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MiniHeap : NSObject

@property NSMutableArray *miniHeap;
@property NSInteger capacity;
@property NSInteger usedSize;

//MiniHeapCapacity
- (instancetype)initWithMiniHeapCapacity:(NSInteger)capacity;

//insertHeapNumber
- (void)insertHeapNumber:(NSInteger)insertNumber;

//minimunNumber remove
- (void)extractMinHeap;

//inserted Number Print
- (void)outPut;
@end
