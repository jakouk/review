//
//  main.m
//  mergeSort
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MergeSort.h"

int main(int argc, const char * argv[]) {

    NSArray *data = @[@1,@5,@3,@2,@8,@10,@9,@7,@6,@4];
    
    MergeSort *mSort = [[MergeSort alloc]init];
    NSArray *mSortedList = [mSort mergeSort:data];
    NSLog(@"MergeSort: %@",mSortedList);
    
    return 0;
}
