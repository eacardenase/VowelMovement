//
//  main.m
//  VowelMovement
//
//  Created by Edwin Cardenas on 22/01/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        NSArray *originalStrings = @[
            @"Sauerkraut",
            @"Raygun",
            @"Big Nerd Ranch",
            @"Mississippi"
        ];
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSLog(@"original strings: %@", originalStrings);
        
        void (^devowelizer)(id, NSUInteger, BOOL *) = ^(id string, NSUInteger i, BOOL *stop) {
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            if (yRange.location != NSNotFound) {
                *stop = YES; // prevents further iterations
                return; // ends current iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        };
        
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
