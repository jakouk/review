//
//  Children.h
//  KVCODemo
//
//  Created by jakouk on 2017. 2. 14..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Children : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSUInteger age;

@property (nonatomic, strong) Children *child;

@end
