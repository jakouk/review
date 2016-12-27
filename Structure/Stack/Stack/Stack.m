//
//  Stack.m
//  Stack
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Stack.h"

@implementation Stack

-(void)stackAddData:(NSString *)data {
    
    Node *nowNode = [[Node alloc] init];
    nowNode.data = data;
    
    // if top nil
    if ( self.top == nil ) {
        
        self.top = nowNode;
        self.bottom = nowNode;
        nowNode.front = nil;
        
    } else {
        
        nowNode.front = self.top;
        self.top = nowNode;

    }
    
}

- (void)stackDelete {
    
    NSLog(@"delete data : %@",self.top.data);
    self.top = self.top.front;
    
}

- (void)stackCount {
    
    NSInteger count = 0;
    Node *next = self.top;
    
    while( next != nil ) {
        
        count = count +1;
        next = next.front;
        
    }
    
    NSLog(@"stack count = %ld \n\n",count);
}




@end
