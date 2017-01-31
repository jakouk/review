//
//  itemView.h
//  delegatePractice1
//
//  Created by jakouk on 2017. 1. 30..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ItemViewDelegate;

@interface itemView : UIView

@property (nonatomic, weak) id <ItemViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame name:(NSString *)name;

@end

@protocol ItemViewDelegate <NSObject>

- (void)didSelectedViewItemView:(itemView *)itemView;

@end
