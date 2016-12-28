//
//  SelectSort.m
//  selectSort
//
//  Created by jakouk on 2016. 12. 27..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "SelectSort.h"

@implementation SelectSort

- (NSArray *)selectSort:(NSArray *)array {
    
    NSMutableArray *sort = [[NSMutableArray alloc] initWithArray:array];
    
    NSInteger minimunNumber = 0;
    NSInteger minimunIndex = 0;
    
    NSInteger sortCount = sort.count;
    
    for ( NSInteger i = 0; i <sortCount; i++ ) {
        
        for ( NSInteger j = i; j<sortCount; j++ ) {
            
            if ( j == i ) {
                NSNumber *firstNumber = sort[j];
                minimunNumber = [firstNumber integerValue];
                minimunIndex = j;
            }
                NSNumber *Nextnumber = sort[j];
            
            if ( minimunNumber > [Nextnumber integerValue]) {
                minimunNumber = [Nextnumber integerValue];
                minimunIndex = j;
                
            }
            
        }
       
        if ( i != minimunIndex ) {
            [sort exchangeObjectAtIndex:i withObjectAtIndex:minimunIndex];
            NSLog(@" \n array = %@",sort);
        }
        
    }
    
    return sort;
}

@end
