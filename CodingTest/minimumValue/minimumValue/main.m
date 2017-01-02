//
//  main.m
//  minimumValue
//
//  Created by jakouk on 2017. 1. 2..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "minimumValue.h"

int main(int argc, const char * argv[]) {

    // insert code here...
    NSLog(@"Hello, World!");
    
    NSArray *array = @[@17,@12,@5,@3,@13,@22,@2,@6,@7];
    
    minimumValue *minimumObject = [[minimumValue alloc] init];
    
    NSInteger minimum = [minimumObject minimumValueFindMethod:array];
    NSLog(@"minimumNumber = %ld",minimum);
    
    return 0;
}
