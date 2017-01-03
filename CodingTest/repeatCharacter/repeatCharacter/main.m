//
//  main.m
//  repeatCharacter
//
//  Created by jakouk on 2017. 1. 3..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RepeatCharacter.h"

int main(int argc, const char * argv[]) {
    // insert code here...
    
    NSLog(@"Hello, World!");
    
    RepeatCharacter *repeat = [[RepeatCharacter alloc] init];
    
    [repeat repeatCharacter:@"aaa"];
    
    return 0;
}
