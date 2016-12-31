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
#import "BinarySearch.h"

int main(int argc, const char * argv[]) {

    
    //binaryTree
    BinaryTree *binaryTree = [[BinaryTree alloc] init];
//    Node *rootNode = [binaryTree createBinaryTree:@"1"];
//    
//    Node *a = [[Node alloc] init];
//    a.data = @"2";
//    
//    Node *b = [[Node alloc] init];
//    b.data = @"3";
//    
//    Node *c = [[Node alloc] init];
//    c.data = @"4";
//    
//    Node *d = [[Node alloc] init];
//    d.data = @"5";
//    
//    Node *e = [[Node alloc] init];
//    e.data = @"6";
//    
//    Node *f = [[Node alloc] init];
//    f.data = @"7";
//    
//    //root
//    rootNode.leftNode = a;
//    rootNode.rightNode = b;
//    
//    //a
//    a.leftNode = c;
//    a.rightNode = d;
//    
//    //b
//    b.leftNode = e;
//    b.rightNode = f;
//    
//    [binaryTree preorderPrintTree:rootNode];
//    
//    NSLog(@"\n\n");
//    
//    [binaryTree inorderPrintTree:rootNode];
//    
//    NSLog(@"\n\n");
//    
//    [binaryTree postorderPrintTree:rootNode];
  
    
    Node *rootNode = [binaryTree createBinaryTree:@"10"];
    Node *findNode = [[Node alloc] init];
    
    BinarySearch *searchTree = [[BinarySearch alloc] init];
    
    [searchTree insertNode:rootNode newNode:[searchTree searchCreateNode:@"5"]];
    [searchTree insertNode:rootNode newNode:[searchTree searchCreateNode:@"1"]];
    [searchTree insertNode:rootNode newNode:[searchTree searchCreateNode:@"6"]];
    [searchTree insertNode:rootNode newNode:[searchTree searchCreateNode:@"17"]];
    [searchTree insertNode:rootNode newNode:[searchTree searchCreateNode:@"14"]];
    [searchTree insertNode:rootNode newNode:[searchTree searchCreateNode:@"21"]];
   
    while(1)
    {
        NSLog(@"What is the first name?");
        char cstring[40];
        scanf("%s", cstring);
        
        NSString *findData = [NSString stringWithCString:cstring encoding:1];
        
        findNode = [searchTree searchNode:rootNode findData:findData];
        
        if (findNode != nil ) {
            NSLog(@"해당 노드를 찾았습니다! 노드를 제거합니다. 노드의 데이터는 %@",findNode.data);
            [searchTree removeNode:rootNode removeData:findData];
            NSLog(@"현재 트리 출력");
            [searchTree printSearchTree:rootNode];
        } else {
            NSLog(@"노드를 찾을 수 없습니다.");
        }
    }
    
    return 0;
}
