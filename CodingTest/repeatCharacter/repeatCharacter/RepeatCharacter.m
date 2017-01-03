//
//  repeatCharacter.m
//  repeatCharacter
//
//  Created by jakouk on 2017. 1. 3..
//  Copyright © 2017년 jakouk. All rights reserved.
//

#import "RepeatCharacter.h"

@implementation RepeatCharacter

- (void)repeatCharacter:(NSString *)generalString {
    
    unichar firstRepeatChar = [generalString characterAtIndex:0];
    NSInteger firstCount = 0;
    
    unichar secondRepeatChar;
    
    for ( NSInteger i = 1; i <generalString.length-1; i ++) {
        
        if (firstRepeatChar == [generalString characterAtIndex:i] ) {
            firstCount += 1;
            NSLog(@"firstCount = %ld",firstCount);
        } else {
            
            if (firstCount == 0) {
                 firstRepeatChar = [generalString characterAtIndex:i];
            } else {
                
                secondRepeatChar = [generalString characterAtIndex:i];
                
                if (secondRepeatChar == [generalString characterAtIndex:i+1]) {
                        firstRepeatChar = secondRepeatChar;
                        firstCount = 1;
                } else {
                        unichar endRepeat = [generalString characterAtIndex:i];
                        NSString *endRepeatStr = [[NSString alloc] initWithCharacters:&endRepeat length:1];
            
                        NSLog(@"endRepeatChar = %@",endRepeatStr);
                        return ;
                }
            }
        }
    }
    
    if (firstCount > 1) {
        NSLog(@"\n");
    }
    
}

@end
