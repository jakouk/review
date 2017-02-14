//
//  main.m
//  TapeEquilibrium
//
//  Created by jakouk on 2017. 2. 3..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    
    NSMutableArray *A = [[NSMutableArray alloc] initWithArray:@[@3,@1,@2,@4,@3]];
    
    NSInteger result = solution(A);
    
    NSLog(@"%ld",result);
    
    return 0;
}

int solution(NSMutableArray *A) {
   
    NSInteger ACount = A.count;
    NSInteger result = 0;
    NSInteger nowTime = 0;
    
    NSInteger AllCount = ( ACount * (ACount - 1) ) /2;
    
    NSInteger i = 0;
    NSInteger j = 1;
    
    while ( AllCount != nowTime ) {
        
        if ( result <= 0) {
            NSNumber *number = A[i];
            
            if ([number integerValue] > 0) {
                result += [number integerValue];
                
            } else {
                result -= [number integerValue];
            }
            
            nowTime += i;
            i++;
            
        }else {
            NSNumber *number = A[ACount - j];
            
            if ([number integerValue] > 0) {
                result -= [number integerValue];
                
            } else {
                result += [number integerValue];
            }
            
            nowTime += ACount -j;
            j++;
            
        }
        
    }

    
    if ( result < 0) {
        result *= -1;
    }
    
    return result;
    
}
