//
//  reverseString.m
//  reverseString
//
//  Created by jakouk on 2016. 12. 29..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "reverseString.h"

@implementation reverseString

- (NSString *)revesrString:(NSString *)str {
    
    NSMutableString *mutableString = [[NSMutableString alloc] init];
    NSInteger strLength = str.length;

    for ( NSInteger i = strLength-1 ; i > -1 ; i-- ) {
        
        unichar charcter = [str characterAtIndex:i];
        NSString *charStr = [[NSString alloc] initWithCharacters:&charcter length:1];
        [mutableString appendString: charStr];
    }
    
    NSLog(@"reverseString = %@",mutableString);
    
    return str;
}

- (NSString *)revesrEnterString:(NSString *)str {
    
    NSMutableString *mutableString = [[NSMutableString alloc] init];
    NSInteger strLength = str.length;
    
    for ( NSInteger i = strLength-1 ; i > -1 ; i-- ) {
        
        unichar charcter = [str characterAtIndex:i];
        NSString *charStr = [[NSString alloc] initWithCharacters:&charcter length:1];
        [mutableString appendString: charStr];
        
        if ((int)charStr == '\0') {
            NSLog(@"reverseString = %@",mutableString);
        }
    }
    
    return str;
}

@end
