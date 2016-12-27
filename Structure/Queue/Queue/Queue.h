//
//  Queue.h
//  Queue
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Queue : NSObject

@property Node *first;
@property Node *last;

- (void)queueAddData:(NSString *)data;
- (void)queueDelete;
- (void)queueCount;

@end
