//
//  main.m
//  OddOccurrencesInArray
//
//  Created by jakouk on 2017. 2. 1..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSInteger X = 10;
    NSInteger Y = 100;
    NSInteger D = 30;
    
    NSInteger i = 1;
    
    Y = Y - X;
    
    while(Y != 0) {
        Y /= D;
        i++;
    }
    
    NSLog(@"%ld",i);
    
}
