//
//  DfsAlgorithm.m
//  DFSAlgorithm
//
//  Created by jakouk on 2017. 1. 5..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "DfsAlgorithm.h"

@implementation DfsAlgorithm

- (void)dfcAlgorithm:(NSInteger)xPosition yPosition:(NSInteger)yPosition loadCount:(NSInteger)loadCount {
    
    if ( xPosition == 4 && yPosition == 4) {
        
        if ( self.minimum > 1) {
            self.minimum = loadCount;
        }
        
        return ;
    }
    
    NSMutableArray *twoArray = self.twoDimensional[yPosition];
    [twoArray removeObjectAtIndex:xPosition];
    [twoArray insertObject:@0 atIndex:xPosition];
    
    if ( yPosition > 0) {
        twoArray = self.twoDimensional[yPosition-1];
        if ( [[twoArray objectAtIndex:xPosition] integerValue] != 0 ) {
            [self dfcAlgorithm:xPosition yPosition:yPosition-1 loadCount:loadCount+1];
        }
    }
    
    if ( yPosition < 4 ) {
        twoArray = self.twoDimensional[yPosition+1];
        if ( [[twoArray objectAtIndex:xPosition] integerValue] != 0 ) {
            [self dfcAlgorithm:xPosition yPosition:yPosition+1 loadCount:loadCount+1];
        }
    }
    
    if ( xPosition > 0) {
        twoArray = self.twoDimensional[yPosition];
        if ( [[twoArray objectAtIndex:xPosition-1] integerValue] != 0 ) {
            [self dfcAlgorithm:xPosition-1 yPosition:yPosition loadCount:loadCount+1];
        }
    }
    
    if ( xPosition < 4 ) {
        twoArray = self.twoDimensional[yPosition];
        if ( [[twoArray objectAtIndex:xPosition+1] integerValue] != 0 ) {
            [self dfcAlgorithm:xPosition+1 yPosition:yPosition loadCount:loadCount+1];
        }
    }

    twoArray = self.twoDimensional[yPosition];
    [twoArray removeObjectAtIndex:xPosition];
    [twoArray insertObject:@1 atIndex:xPosition];
}

@end
