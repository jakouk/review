//
//  Start.m
//  KVO
//
//  Created by jakouk on 2017. 2. 14..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "Start.h"
#import "Yujin.h"

@implementation Start

- (void)registerOfObserv {
    
    Yujin *yujinLove = [[Yujin alloc] init];
    [yujinLove addObserver:self forKeyPath:@"onAir" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
     NSLog(@"keyPath:[%@] change:[%@]",keyPath, [change description]);
    
    if ([keyPath isEqual:@"onAir"]) {
        
    }
}

@end
