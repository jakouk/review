//
//  main.m
//  Queue
//
//  Created by jakouk on 2016. 12. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Queue.h"

int main(int argc, const char * argv[]) {
    
    NSLog(@"Hello, World!");
    
    Queue *queue = [[Queue alloc] init];
    
    [queue queueAddData:@"1"];
    [queue queueAddData:@"2"];
    [queue queueAddData:@"3"];
    [queue queueAddData:@"4"];
    [queue queueAddData:@"5"];
    
    [queue queueCount];
    
    [queue queueDelete];
    [queue queueDelete];
    [queue queueDelete];
    [queue queueDelete];
    [queue queueDelete];
    
    [queue queueCount];
    
    return 0;
}
