//
//  Queue.m
//  Queue
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Queue.h"

@implementation Queue

- (void)queueAddData:(NSString *)data {
    
    Node *nowNode = [[Node alloc] init];
    nowNode.data = data;
    
    if ( self.first == nil ) {
        
        self.first = nowNode;
        self.last = nowNode;
        
        
    } else {
        
        self.last.next = nowNode;
        self.last = nowNode;
        
    }
    
}

- (void)queueDelete {
    
    NSLog(@"Delete Data = %@",self.first.data);
    
    Node *firstNode = self.first.next;
    
    //Arc Memory Control
    self.first.next = nil;

    self.first = firstNode;
}

- (void)queueCount {
    
    NSInteger count = 0;
    
    Node *first = [[Node alloc] init];
    first = self.first;
    
    while ( first != nil ) {
        
        first = first.next;
        count = count + 1;
    }
    
    NSLog(@"queue count = %ld",count);
    
}

@end
