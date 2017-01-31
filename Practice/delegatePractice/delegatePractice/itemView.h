//
//  itemView.h
//  delegatePractice
//
//  Created by jakouk on 2017. 1. 25..
//  Copyright © 2017년 jakouk. All rights reserved.
//


// 문제점 self의 view 크기자체가 아예 없어서 터치를 받지를 못해서 실행이 안되는 문제가 발생했음 .
// delegate 와 프로토콜은 계속해서 연습하고 이해할 필요가 있음 .

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ItemViewDelegate;

@interface itemView : UIView {
    
    NSString *_name;
    NSString *_title;
    
}


//클래스가 아니라 프로토콜이다. delegate라고 하는 프로퍼티이다.
@property (nonatomic, weak) id <ItemViewDelegate> delegate;

- (instancetype)initWithName:(NSString *)name title:(NSString *)title;

- (NSString *)getTitle;
- (NSString *)getName;

@end

//protocol 이름이 ItemViewDelegate/ 상속은 NSObjecProtocol을 받음
@protocol ItemViewDelegate <NSObject>

- (void)didSelectedItemView:(itemView *)itemView;
- (void)willSelectedItemView:(itemView *)itemView;

@end
