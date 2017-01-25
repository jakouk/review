//
//  itemView.m
//  delegatePractice
//
//  Created by jakouk on 2017. 1. 25..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "itemView.h"

@implementation itemView

- (instancetype)initWithName:(NSString *)name title:(NSString *)title
{
    self = [super init];
    self.frame = CGRectMake(0, 0, 400, 600);
    if (self) {
        _title = [[NSString alloc] initWithString:title];
        _name = [[NSString alloc] initWithString:name];
        [self createView];
    }
    return self;
}


- (void)createView {
    
    UILabel *titleLb = [[UILabel alloc] init];
    
    titleLb.frame = CGRectMake(0, 200 - 35, 200, 200);
    titleLb.text = _name;
    titleLb.font = [UIFont boldSystemFontOfSize:16];
    titleLb.textAlignment = NSTextAlignmentCenter;
    titleLb.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self addSubview:titleLb];
    
    //cost
    UILabel *costLB = [[UILabel alloc] init];
    costLB.frame = CGRectMake(200, 200 - 15, 200, 200);
    costLB.text = _title;
    costLB.font = [UIFont systemFontOfSize:15];
    costLB.textAlignment = NSTextAlignmentCenter;
    costLB.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self addSubview:costLB];
    
    //itemView위에 UIButton이라는 것을 덮어 씌움.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 400, 400);
    
    //버튼은 터치하면 onTouchupInsideItem이라는 메서드가 실행됨
    [btn addTarget:self action:@selector(onTouchupInsideItem:) forControlEvents:UIControlEventTouchUpInside];
    
    btn.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:btn];

    
}

- (void)onTouchupInsideItem:(UIButton *)sender {
    
    if ([self.delegate respondsToSelector:@selector(didSelectedItemView:)]) {
        [self.delegate didSelectedItemView:self];
    }
}

//setter는 만들지 않음 .
- (NSString *)getTitle {
    return _title;
}

- (NSString *)getName {
    return _name;
}

@end
