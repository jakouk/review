//
//  main.m
//  CyclicRotation
//
//  Created by jakouk on 2017. 1. 31..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSMutableArray *array = [[NSMutableArray alloc] initWithArray: @[@3,@8,@9,@7,@6]];
    
    NSInteger K = 3;
    NSInteger arrayCount = array.count;
    
    for ( NSInteger i =0; i < K ; i ++) {
        NSNumber *lastNumber = array[arrayCount-1];
        NSLog(@"%@",array[arrayCount-1]);
        
        [array removeObjectAtIndex: arrayCount-1 ];
        [array insertObject:lastNumber atIndex:0];
    }
    
    NSLog(@"%@",array);
    
    return 0;
}
