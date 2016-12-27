//
//  main.m
//  Stack
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

int main(int argc, const char * argv[]) {
    
    Stack *stack = [[Stack alloc] init];
    
    [stack stackAddData:@"1"];
    [stack stackAddData:@"2"];
    [stack stackAddData:@"3"];
    [stack stackAddData:@"4"];
    [stack stackAddData:@"5"];
    [stack stackCount];
    
    [stack stackDelete];
    [stack stackCount];
    
    [stack stackDelete];
    [stack stackCount];
    
    [stack stackDelete];
    [stack stackCount];
    
    [stack stackDelete];
    [stack stackCount];
    
    [stack stackDelete];
    [stack stackCount];
    
    return 0;
}
