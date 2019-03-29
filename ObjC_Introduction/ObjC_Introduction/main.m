//
//  main.m
//  ObjC_Introduction
//
//  Created by Tatiana Tsygankova on 29.03.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import <Foundation/Foundation.h>

int getAverage(int a, int b, int c) {
    
    int result;
    
    if(a>=b && a<=c) {
        result = a;
    } else if (b>=a && b<=c) {
        result = b;
    } else {
        result = c;
    }
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int x, y, z=0;
        char operation='+';
        
        while(operation != '0') {
            printf("Operation (+, -, *, /, %%, A (for average))\n or 0 - to exit: ");
            scanf("%s", &operation);
            if (operation == '0') { break; }
            if (operation == '+' || operation == '-' || operation == '*' || operation == '/' || operation == '%' || operation == 'A') {
                printf("First number: ");
                scanf("%d", &x);
                printf("Second number: ");
                scanf("%d", &y);
                if(operation == 'A') {
                    printf("Fird number: ");
                    scanf("%d", &z);
                }
                switch (operation) {
                    case '+':
                        NSLog(@"%d + %d = %d", x, y, x+y);
                        break;
                    case '-':
                        NSLog(@"%d - %d = %d", x, y, x-y);
                        break;
                    case '*':
                        NSLog(@"%d * %d = %d", x, y, x*y);
                        break;
                    case '/':
                        if (y != 0) NSLog(@"%d / %d = %d", x, y, x/y);
                        else NSLog(@"Division by zero!");
                        break;
                    case '%':
                        if (y != 0) NSLog(@"%d %% %d = %d", x, y, x%y);
                        else NSLog(@"Division by zero!");
                        break;
                    case 'A':
                        NSLog(@"Average of %d, %d, %d is %d", x, y, z, getAverage(x,y,z));
                        break;
                }
            } else {
                    NSLog(@"Unknown operation!");
            }
        }
    }
    return 0;
}
