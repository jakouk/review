//
//  ViewController.m
//  viewTest
//
//  Created by jakouk on 2017. 1. 25..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"awakeFromNib");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    NSLog(@"viewDidApper");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    NSLog(@"viewWillAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"didReceiveMemoryWorning");
}


@end
