//
//  ViewController.m
//  protocolPractice
//
//  Created by jakouk on 2017. 1. 26..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scroll = [[UIScrollView alloc] init];
    scroll.delegate = self;
    scroll.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    scroll.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height*3);
    [self.view addSubview:scroll];
    
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"hello");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
