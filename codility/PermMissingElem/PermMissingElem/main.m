//
//  main.m
//  PermMissingElem
//
//  Created by jakouk on 2017. 2. 2..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSMutableArray *A = [[NSMutableArray alloc] initWithArray:@[@2,@3,@1,@5]];
    
    NSLog(@"%d",solution(A));
    
    return 0;
}

int solution(NSMutableArray *A) {
    
    NSInteger ACount = A.count;
    
    for (NSInteger i = 1; i < ACount+2; i ++ ) {
        NSNumber *number = [[NSNumber alloc] initWithInteger:i];
        [A addObject:number];
    }
    NSNumber *firstNumber = [A objectAtIndex:0];
    NSInteger result = firstNumber.integerValue;
    
    ACount = A.count;
    for (NSInteger i = 1; i< ACount; i++ ) {
        
        NSNumber *number = [A objectAtIndex:i];
        result ^= number.integerValue;
    }
    
    return result;
}
