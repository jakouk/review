//
//  ViewController.m
//  delegatePractice
//
//  Created by jakouk on 2017. 1. 25..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "ViewController.h"
#import "itemView.h"

@interface ViewController () <ItemViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    itemView *itemview = [[itemView alloc] initWithName:@"hello" title:@"hell"];
    itemview.delegate = self;
    
    [self.view addSubview:itemview];
    
    
}

-(void)didSelectedItemView:(itemView *)itemView {
    NSLog(@"hello");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
