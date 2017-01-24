//
//  ViewController.m
//  scrollColor
//
//  Created by jakouk on 2017. 1. 24..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scroll;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.scroll.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    self.scroll.delegate = self;
    self.scroll.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 3);
    [self.scroll setBounces:NO];
    [self.view addSubview:self.scroll];
    
    self.view.backgroundColor = [UIColor colorWithRed:self.scroll.contentOffset.y green:0 blue:0 alpha:1];
    
    // Do any additional setup after loading the view, typically from a nib.
}

//scroll을 올렸다 내렸다 할때 마다 실행
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    //실제 scrollView.contentOffset의 최대값은 scrollView.cotentSize.height/3 *2 였다. 
    CGFloat bifurcation = scrollView.contentSize.height - scrollView.contentSize.height/3;
    
    if (scrollView.contentOffset.y >= 0 && scrollView.contentOffset.y < bifurcation/ 3 ) {
        
        self.view.backgroundColor = [UIColor colorWithRed:scrollView.contentOffset.y/(bifurcation/3) green:0 blue:0 alpha:1];
        
    }
    else if(scrollView.contentOffset.y >= bifurcation/3 && scrollView.contentOffset.y < (bifurcation/3) *2 ){
        
        self.view.backgroundColor = [UIColor colorWithRed:0 green:(scrollView.contentOffset.y - bifurcation/3) /(bifurcation/3) blue:0 alpha:1];
        
    } else if (scrollView.contentOffset.y >= (bifurcation/3 ) *2 )  {
        
        self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:(scrollView.contentOffset.y - (bifurcation/3) *2) /(bifurcation/3) alpha:1];
        
    }
    
    
    NSLog(@"scrollView.contentOffset.y = %lf",scrollView.contentOffset.y);
    NSLog(@"scrollView.contentOffset.x = %lf",scrollView.contentOffset.x);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
