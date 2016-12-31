//
//  BinarySearch.m
//  BinaryTree
//
//  Created by jakouk on 2016. 12. 29..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch


- (Node *)searchCreateNode:(NSString *)data {
    
    Node *newNode = [[Node alloc] init];
    newNode.data = data;
    
    return newNode;
}


-(Node *)searchNode:(Node *)rootNode findData:(NSString *)findData {
    
    NSInteger findNumber = [findData integerValue];
    
    if ( rootNode == nil ) {
        return nil;
    }
    if ( [rootNode.data integerValue] == findNumber ) {
        
        return rootNode;
        
    } else if ( [rootNode.data integerValue] > findNumber ) {
        
        return [self searchNode:rootNode.leftNode findData:findData];
        
    } else {
        
        return [self searchNode:rootNode.rightNode findData:findData];
        
    }
}


-(void)insertNode:(Node *)rootNode newNode:(Node *)newNode {
    
    if ( [newNode.data integerValue] > [rootNode.data integerValue] ) {
        
        if ( rootNode.rightNode != nil ) {
            
            [self insertNode:rootNode.rightNode newNode:newNode];
            
        } else {
            
            rootNode.rightNode = newNode;
            
        }
        
    } else if ( [newNode.data integerValue] < [rootNode.data integerValue] ) {
        
        if (rootNode.leftNode != nil ) {
            
            [self insertNode:rootNode.leftNode newNode:newNode];
            
        } else {
            
            rootNode.leftNode = newNode;
            
        }
    }
}


//miniimum
- (Node *)findMinimumNode:(Node *)rootNode {
    
    if ( rootNode == nil ) {
        return nil;
    }
    
    if (rootNode.leftNode != nil ) {
        
        return [self findMinimumNode:rootNode.leftNode];
        
    } else {
        
        return rootNode;
        
    }
}


- (Node *)removeNode:(Node *)rootNode removeData:(NSString *)removeData {
    
    Node *tempNode;
    
    if ( rootNode == nil ) {
        
        NSLog(@"해당하는 노드를 찾을수 없습니다.");
        return nil;
        
    } else if ( [rootNode.data integerValue] > [removeData integerValue] ) {
        
        rootNode.leftNode = [self removeNode:rootNode.leftNode removeData:removeData];
        
    } else if ( [rootNode.data integerValue] < [removeData integerValue] ) {
        
        rootNode.rightNode = [self removeNode:rootNode.rightNode removeData:removeData];
        
    } else {
        
        if ( rootNode.leftNode != nil && rootNode.rightNode != nil ) {
            
            tempNode = [self findMinimumNode:rootNode.rightNode];
            rootNode.data = tempNode.data;
            rootNode.rightNode = [self removeNode:rootNode.rightNode removeData:tempNode.data];
            
        } else {
            
            tempNode = rootNode;
            if ( rootNode.leftNode == nil ) {
                rootNode = rootNode.rightNode;
                
            } else if ( rootNode.rightNode == nil ) {
                rootNode = rootNode.leftNode;
            }
            tempNode = nil;
        }
        
    }
    
    return rootNode;
}

- (void)printSearchTree:(Node *)rootNode {
    
    if ( rootNode == nil ) {
        return ;
    }
    [self printSearchTree:rootNode.leftNode];
    NSLog(@"%@ ",rootNode.data);
    [self printSearchTree:rootNode.rightNode];
    
}

@end
