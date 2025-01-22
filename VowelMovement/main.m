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
        
        void (^devowelizer)(id, NSUInteger, BOOL *);
    }
    return 0;
}
