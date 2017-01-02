//
//  minimumValue.m
//  minimumValue
//
//  Created by jakouk on 2017. 1. 2..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "minimumValue.h"

@implementation minimumValue

- (NSInteger)minimumValueFindMethod:(NSArray *)array {
    
    NSNumber *minimumNumber = [[NSNumber alloc] initWithInteger:[array[0] integerValue]];
    
    for ( NSInteger i =0; i < array.count; i ++ ) {
        
        if ( [minimumNumber integerValue] > [array[i] integerValue] ) {
            minimumNumber = array[i];
        }
        
    }
    
    return [minimumNumber integerValue];
}

@end
