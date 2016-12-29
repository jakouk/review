//
//  BinaryTree.m
//  BinaryTree
//
//  Created by jakouk on 2016. 12. 28..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "BinaryTree.h"

@implementation BinaryTree

- (Node *)createBinaryTree:(NSString *)data {
    
    Node *newNode = [[Node alloc] init];
    newNode.data = data;
    self.root =newNode;
    
    return newNode;
}

- (void)preorderPrintTree:(Node *)node {
    
    if ( node == nil ) {
        return ;
    }
    NSLog(@"%@",node.data);
    
    [self preorderPrintTree:node.leftNode];
    [self preorderPrintTree:node.rightNode];
}

- (void)inorderPrintTree:(Node *)node {
    
    if ( node == nil ) {
        return ;
    }
    [self inorderPrintTree:node.leftNode];
    NSLog(@"%@",node.data);
    [self inorderPrintTree:node.rightNode];

}

- (void)postorderPrintTree:(Node *)node {
    
    if ( node == nil ) {
        return ;
    }
    [self postorderPrintTree:node.leftNode];
    [self postorderPrintTree:node.rightNode];
    NSLog(@"%@",node.data);
    
    
}


@end
