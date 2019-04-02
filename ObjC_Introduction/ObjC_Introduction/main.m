//
//  main.m
//  ObjC_Introduction
//
//  Created by Tatiana Tsygankova on 29.03.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isLatin(char a) {
    if(a >= 'A' && a <='z') {
        return YES;
    }
    return NO;
}

int add(int a, int b) {
    return a + b;
}

int subtract(int a, int b) {
    return a - b;
}

int multiply(int a, int b) {
    return a * b;
}

int divide(int a, int b) {
    return a / b;
}

int divisionRemainder(int a, int b) {
    return a % b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 5;
        int b = 8;
        
        NSLog(@"%i + %i = %i", a, b, add(a,b));
        NSLog(@"%i - %i = %i", a, b, subtract(a,b));
        NSLog(@"%i * %i = %i", a, b, multiply(a,b));
        NSLog(@"%i / %i = %i", a, b, divide(a,b));
        NSLog(@"%i %% %i = %i", a, b, divisionRemainder(a,b));
        
        NSLog(@"h is Latin: %s", isLatin('h') ? "YES" :"NO");
        NSLog(@"F is Latin: %s", isLatin('F') ? "YES" :"NO");
        NSLog(@"8 is Latin: %s", isLatin('8') ? "YES" :"NO");
    }
    return 0;
}
