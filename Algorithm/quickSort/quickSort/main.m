//
//  main.m
//  quickSort
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuickSort.h"

int main(int argc, const char * argv[]) {

    NSArray *data = @[@1,@5,@3,@2,@8,@10,@9,@7,@6,@4];
    
    QuickSort *qSort = [[QuickSort alloc]init];
    NSArray *qSortedList = [qSort quickSort:data];
    NSLog(@"quickSort: %@",qSortedList);
    
    return 0;
}
