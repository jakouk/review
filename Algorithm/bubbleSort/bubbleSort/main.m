//
//  main.m
//  bubbleSort
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BubbleSort.h"

int main(int argc, const char * argv[]) {
    
    NSLog(@"Hello, World!");
    NSArray *array = @[@"10",@"9",@"8",@"7",@"6",@"5",@"4",@"3",@"2",@"1"];
    BubbleSort *sort = [[BubbleSort alloc] init];
    
    array = [sort bubbleSort:array];
    
    NSLog(@"%@",array);
    
    return 0;
}
