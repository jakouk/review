//
//  Stack.h
//  Stack
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Stack : NSObject

@property Node *top;
@property Node *bottom;

//addData
- (void)stackAddData:(NSString *)data;

//delete
- (void)stackDelete;

//count
- (void)stackCount;

@end
