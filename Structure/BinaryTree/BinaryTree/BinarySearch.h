//
//  BinarySearch.h
//  BinaryTree
//
//  Created by jakouk on 2016. 12. 29..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface BinarySearch : NSObject

//seachCreateNode
- (Node *)searchCreateNode:(NSString *)data;

//searchNode
-(Node *)searchNode:(Node *)rootNode findData:(NSString *)findData;

//insertNode
-(void)insertNode:(Node *)rootNode newNode:(Node *)newNode;

//remove
- (Node *)removeNode:(Node *)rootNode removeData:(NSString *)removeData;

//printSearchTree
- (void)printSearchTree:(Node *)rootNode;

@end
