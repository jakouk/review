//
//  main.m
//  Heap
//
//  Created by jakouk on 2017. 1. 1..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MiniHeap.h"

int main(int argc, const char * argv[]) {

    NSLog(@"Hello, World!");
    
    NSInteger maxSize = 6;
    MiniHeap *miniHeap = [[MiniHeap alloc] initWithMiniHeapCapacity: maxSize];

    for ( NSInteger i =maxSize; i > 0; i -- ) {
        
        [miniHeap insertHeapNumber:i];
    }
    
    [miniHeap outPut];
    
    NSLog(@"\n");
    
    [miniHeap extractMinHeap];
    [miniHeap outPut];
    
    NSLog(@"\n");
    
    [miniHeap extractMinHeap];
    [miniHeap outPut];
    
    NSLog(@"\n");
    
    return 0;
}
