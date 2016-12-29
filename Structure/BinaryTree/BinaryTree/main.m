//
//  main.m
//  BinaryTree
//
//  Created by jakouk on 2016. 12. 28..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "BinaryTree.h"

int main(int argc, const char * argv[]) {

    //binaryTree
    BinaryTree *binaryTree = [[BinaryTree alloc] init];
    Node *rootNode = [binaryTree createBinaryTree:@"1"];
    
    Node *a = [[Node alloc] init];
    a.data = @"2";
    
    Node *b = [[Node alloc] init];
    b.data = @"3";
    
    Node *c = [[Node alloc] init];
    c.data = @"4";
    
    Node *d = [[Node alloc] init];
    d.data = @"5";
    
    Node *e = [[Node alloc] init];
    e.data = @"6";
    
    Node *f = [[Node alloc] init];
    f.data = @"7";
    
    //root
    rootNode.leftNode = a;
    rootNode.rightNode = b;
    
    //a
    a.leftNode = c;
    a.rightNode = d;
    
    //b
    b.leftNode = e;
    b.rightNode = f;
    
    [binaryTree preorderPrintTree:rootNode];
    
    NSLog(@"\n\n");
    
    [binaryTree inorderPrintTree:rootNode];
    
    NSLog(@"\n\n");
    
    [binaryTree postorderPrintTree:rootNode];
    
    return 0;
}
