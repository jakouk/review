//
//  main.m
//  reverseString
//
//  Created by jakouk on 2016. 12. 29..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "reverseString.h"

int main(int argc, const char * argv[]) {
    
    reverseString *reverseStr = [[reverseString alloc] init];
    
    NSLog(@"Hello, World!");
    NSString *str = @"hello world";
    
    str = [reverseStr revesrString:str];
    
    str = [reverseStr revesrEnterString:str];
    
    return 0;
}
