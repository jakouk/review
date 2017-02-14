//
//  ViewController.m
//  KVCODemo
//
//  Created by jakouk on 2017. 2. 14..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "ViewController.h"
#import "Children.h"

@interface ViewController ()

@property (nonatomic, strong) Children *child1;

@property (nonatomic, strong) Children *child2;

@property (nonatomic, strong) Children *child3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.child1 = [[Children alloc] init];
    
    self.child1.name = @"George";
    self.child1.age = 15;
    
    NSLog(@"%@, %ld", self.child1.name, self.child1.age);
    
    
    
    [self.child1 setValue:@"George" forKey:@"name"];
    [self.child1 setValue:[NSNumber numberWithInteger:15] forKey:@"age"];
    
    NSString *childName = [self.child1 valueForKey:@"name"];
    NSUInteger childAge = [[self.child1 valueForKey:@"age"] integerValue];
    
    NSLog(@"%@, %ld", childName, childAge);
    
    
    
    self.child2 = [[Children alloc] init];
    
    [self.child2 setValue:@"Mary" forKey:@"name"];
    [self.child2 setValue:[NSNumber numberWithInteger:35] forKey:@"age"];
    self.child2.child = [[Children alloc] init];
    
    [self.child2 setValue:@"Andrew" forKeyPath:@"child.name"];
    [self.child2 setValue:[NSNumber numberWithInteger:5] forKeyPath:@"child.age"];
    
    NSLog(@"%@, %ld", self.child2.child.name, self.child2.child.age);
    
    
    
    self.child3 = [[Children alloc] init];
    self.child3.child = [[Children alloc] init];
    self.child3.child.child = [[Children alloc] init];
    
    [self.child3 setValue:@"Tom" forKeyPath:@"child.child.name"];
    [self.child3 setValue:[NSNumber numberWithInteger:2] forKeyPath:@"child.child.age"];
    
    NSLog(@"%@, %ld", self.child3.child.child.name, self.child3.child.child.age);
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.child1 addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    [self.child1 addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
    [self.child1 setValue:@"Michael" forKey:@"name"];
    [self.child1 setValue:[NSNumber numberWithInteger:20] forKey:@"age"];
    
    
    [self.child2 addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
    [self.child2 setValue:[NSNumber numberWithInteger:45] forKey:@"age"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    if ([keyPath isEqualToString:@"name"]) {
        NSLog(@"The name of the child was changed.");
        NSLog(@"%@", change);
    }
    
    if ([keyPath isEqualToString:@"age"]) {
        NSLog(@"The age of the child was changed.");
        NSLog(@"%@", change);
    }
    
}



@end
