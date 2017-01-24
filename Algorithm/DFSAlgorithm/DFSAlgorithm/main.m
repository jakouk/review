//
//  main.m
//  DFSAlgorithm
//
//  Created by jakouk on 2017. 1. 5..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DfsAlgorithm.h"

int main(int argc, const char * argv[]) {
    
    // insert code here...
    NSLog(@"Hello, World!");
    
    DfsAlgorithm *dfs = [[DfsAlgorithm alloc]init];
    
    NSMutableArray *twoDimensionArray = [[NSMutableArray alloc] initWithCapacity:5];
    
    NSMutableArray *oneLine = [[NSMutableArray alloc] initWithArray:@[@1,@1,@1,@1,@1]];
    NSMutableArray *twoLine = [[NSMutableArray alloc] initWithArray:@[@0,@0,@0,@0,@1]];
    NSMutableArray *threeLine = [[NSMutableArray alloc] initWithArray:@[@1,@1,@1,@1,@1]];
    NSMutableArray *fourLine = [[NSMutableArray alloc] initWithArray:@[@1,@0,@1,@0,@0]];
    NSMutableArray *fiveLine = [[NSMutableArray alloc] initWithArray:@[@1,@1,@1,@1,@1]];
    
    [twoDimensionArray addObject:oneLine];
    [twoDimensionArray addObject:twoLine];
    [twoDimensionArray addObject:threeLine];
    [twoDimensionArray addObject:fourLine];
    [twoDimensionArray addObject:fiveLine];
    
    dfs.twoDimensional = twoDimensionArray;
    dfs.minimum = 25;
    
    [dfs dfcAlgorithm:0 yPosition:0 loadCount:1];
    
    NSLog(@"dfs minimum = %ld",dfs.minimum);

    return 0;
}
