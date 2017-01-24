//
//  DfsAlgorithm.h
//  DFSAlgorithm
//
//  Created by jakouk on 2017. 1. 5..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DfsAlgorithm : NSObject

@property NSMutableArray *twoDimensional;
@property NSInteger minimum;

- (void)dfcAlgorithm:(NSInteger)xPosition yPosition:(NSInteger)yPosition loadCount:(NSInteger)loadCount;

@end
