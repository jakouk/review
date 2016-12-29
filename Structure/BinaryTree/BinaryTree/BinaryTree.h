//
//  BinaryTree.h
//  BinaryTree
//
//  Created by jakouk on 2016. 12. 28..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface BinaryTree : NSObject

@property Node *root;

//make root
- (Node *)createBinaryTree:(NSString *)data;

//preorderPrint
- (void)preorderPrintTree:(Node *)node;

//inorderPrint
- (void)inorderPrintTree:(Node *)node;

//postorderPrintTree
- (void)postorderPrintTree:(Node *)node;

@end
