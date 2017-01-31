//
//  itemView.m
//  delegatePractice1
//
//  Created by jakouk on 2017. 1. 30..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "itemView.h"

@interface itemView ()

@property NSString *name;

@end

@implementation itemView


- (instancetype)initWithFrame:(CGRect)frame name:(NSString *)name
{
    self = [super init];
    if (self) {
        
        self.name = [[NSString alloc] initWithString:name];
        self.frame = frame;
        [self createView];
        
    }
    return self;
}

- (void)createView {
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    label.text = self.name;
    [self addSubview:label];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    [btn addTarget:self action:@selector(touchUpInsideViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    
}


- (void)touchUpInsideViewController: (UIButton *)button {
    
    if ([self.delegate respondsToSelector:@selector(didSelectedViewItemView:)]) {
        [self.delegate didSelectedViewItemView:self];
    }
    
}

@end
