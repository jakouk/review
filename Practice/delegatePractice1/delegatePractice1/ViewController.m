//
//  ViewController.m
//  delegatePractice1
//
//  Created by jakouk on 2017. 1. 30..
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
    
    itemView *item1 = [[itemView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.height/2) name:@"hello"];
    item1.delegate = self;
    item1.tag = 1;
    
    [self.view addSubview:item1];
    
    itemView *item2 = [[itemView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/2, self.view.frame.size.height/2) name:@"hi"];
    item2.delegate = self;
    item2.tag = 2;
    
    [self.view addSubview:item2];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didSelectedViewItemView:(itemView *)itemView {
    
    if (itemView.tag == 1) {
        NSLog(@"hello");
    }else {
        NSLog(@"hi");
    }
}

@end
