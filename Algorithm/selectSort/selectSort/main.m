//
//  main.m
//  selectSort
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SelectSort.h"

int main(int argc, const char * argv[]) {
    
    // insert code here...
    NSLog(@"Hello, World!");
    NSArray *array = @[@"10",@"9",@"8",@"7",@"6",@"5",@"4",@"3",@"2",@"1"];
    
    SelectSort *sorted = [[SelectSort alloc] init];
    array = [sorted selectSort:array];
    
    NSLog(@"After Sorted array = %@",array);
    
    return 0;
}
