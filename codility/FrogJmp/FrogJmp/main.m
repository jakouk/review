//
//  main.m
//  FrogJmp
//
//  Created by jakouk on 2017. 2. 2..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSInteger X = 10;
    NSInteger Y = 85;
    NSInteger Z = 30;
    
    NSInteger count = solution(X, Y, Z);
    NSLog(@"%ld",count);
    
    return 0;
}

int solution (int X, int Y, int Z) {
    
    Y = Y - X;
    NSInteger count = 0;
    
    while ( Y  < 0 ) {
        Y -= Z;
        count ++ ;
    }
    
    return count;
}
