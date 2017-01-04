//
//  greedyAlgorithm.m
//  greedyAlgorithm
//
//  Created by jakouk on 2017. 1. 4..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "GreedyAlgorithm.h"

@implementation GreedyAlgorithm

- (void)greedyAlgorithmMethod {
    
    NSInteger inputNumber;

    NSArray *coinArray = @[@10,@7,@1];
    NSMutableArray *coinCount = [[NSMutableArray alloc] initWithArray : @[@0,@0,@0]];
    
    NSInteger i = 0;
    
    NSLog(@"원하는 금액을 입력해 주세요");
    scanf("%ld",&inputNumber);
    
    while (i<3) {
        
        if ( [coinArray[i] integerValue] > inputNumber ) {
            i ++;
            
        } else if ( [coinArray[i] integerValue] < inputNumber) {
            
            inputNumber-= [coinArray[i] integerValue];
            NSNumber *coinNumberCount = [NSNumber numberWithInteger:[coinCount[i] integerValue] + 1];
            [coinCount removeObjectAtIndex:i];
            [coinCount insertObject:coinNumberCount atIndex:i];
            
        } else {
            
            NSNumber *coinNumberCount = [NSNumber numberWithInteger:[coinCount[i] integerValue] + 1];
            [coinCount removeObjectAtIndex:i];
            [coinCount insertObject:coinNumberCount atIndex:i];
            break;
        }
    }
    
    NSLog(@"%@원 동전은 %@개, %@원 동전은 %@개, %@원 동전은 %@개 입니다.\n",coinArray[0],coinCount[0],coinArray[1],coinCount[1],coinArray[2],coinCount[2]);
    
}

@end
