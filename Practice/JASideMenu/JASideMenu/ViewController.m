//
//  ViewController.m
//  JASideMenu
//
//  Created by jakouk on 2017. 2. 15..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIView *menuView;
@property (weak, nonatomic) IBOutlet UIView *menuTapView;
@property (weak, nonatomic) IBOutlet UITableView *menuTableVIew;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.menuView.frame = CGRectMake(-self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    
    
    self.menuTapView.frame = CGRectMake(self.menuView.frame.size.width/3 * 2, 0, self.menuView.frame.size.width/3, self.menuView.frame.size.height);
    self.menuTapView.alpha = 0.5;
    
    self.menuTableVIew.frame = CGRectMake(0, 0, self.view.frame.size.width/3 * 2, self.view.frame.size.height);
    
    self.menuTableVIew.dataSource = self;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *simpleTableIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    cell.textLabel.text = @"hello";
    
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}




- (IBAction)TouchUpInsideSideMenuButton:(UIButton *)sender {
    
    
    
    [UIView animateWithDuration:0.5 animations:^{
        self.menuView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    }];
    
}

- (IBAction)closdeMemuView:(UITapGestureRecognizer *)sender {
    
    [UIView animateWithDuration:0.5 animations:^{
        self.menuView.frame = CGRectMake(-self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
    }];
}

- (IBAction)SwipeGesture:(UISwipeGestureRecognizer *)sender {
    
    CGFloat menuBarXPosition = self.menuView.frame.origin.x;
    
    if (menuBarXPosition < 0 ) {
        
        [UIView animateWithDuration:0.5 animations:^{
            self.menuView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        }];
    }
    
}



@end
