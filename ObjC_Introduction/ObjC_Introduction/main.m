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

BOOL isLatin(char a) {
    if((a >= 'A' && a <='Z') || (a >= 'a' && a <='z')) {
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
    if (b == 0) {
        NSLog(@"Division by zero!");
    } else {
        return a / b;
    }
    return 0;
}

int divisionRemainder(int a, int b) {
    if (b == 0) {
        NSLog(@"Division by zero!");
    } else {
        return a % b;
    }
    return 0;
}

typedef enum {
    Add = '+',
    Sub = '-',
    Mul = '*',
    Div = '/',
    DivRem = '%'
} Operation;

int calculate(Operation oper, int x, int y) {
    int (* func) (int, int);
    switch (oper) {
        case Add:
            func = add;
            break;
        case Sub:
            func = subtract;
            break;
        case Mul:
            func = multiply;
            break;
        case Div:
            func = divide;
            break;
        case DivRem:
            func = divisionRemainder;
            break;
    }
    return func(x,y);
}

typedef NS_ENUM(NSInteger, Gender) {
    Mail,
    Femail
};

typedef struct {
    NSString *name;
    NSInteger age;
    Gender gender;
} Human;

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
                    NSLog(@"Average of %d, %d, %d is %d", x, y, z, getAverage(x,y,z));
                } else {
                    NSLog(@"%d %c %d = %d", x, operation, y, calculate(operation,x,y));
                }
            } else {
                NSLog(@"Unknown operation!");
            }
        }
        
        NSLog(@"h is Latin: %s", isLatin('h') ? "YES" :"NO");
        NSLog(@"F is Latin: %s", isLatin('F') ? "YES" :"NO");
        NSLog(@"8 is Latin: %s", isLatin('8') ? "YES" :"NO");
        NSLog(@"/ is Latin: %s", isLatin('/') ? "YES" :"NO");
        
        NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithObjects:@"string1", @"string2", @"string3", nil];
        [mutableArray addObject:@"string4"];
        NSLog(@"mutableArray:");
        for(NSString *string in mutableArray) {
            NSLog(@"%@", string);
        }
        
        Human man1 = {@"Ivan", 20, Mail};
        Human man2;
        man2.age = 25;
        man2.gender = Femail;
        man2.name = @"Olga";
        NSLog(@"Name: %@ Age: %li Gender: %s", man1.name, man1.age, man1.gender==Mail ? "Mail" : "Femail");
        NSLog(@"Name: %@ Age: %li Gender: %s", man2.name, man2.age, man2.gender==Mail ? "Mail" : "Femail");
    }
    return 0;
}
