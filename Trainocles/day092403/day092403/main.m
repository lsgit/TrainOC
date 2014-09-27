//
//  main.m
//  day092403
//
//  Created by liushuai on 14-9-24.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"
int main(int argc, const char * argv[])
{

    Person *p = [[Person alloc]init];
    p.name = [[NSString alloc]initWithFormat:@"haha"];
     NSLog(@"%lu",[p.name retainCount]);
//    @autoreleasepool {
    
    
//        NSLog(@"%lu",[s retainCount]);
    
//        p.name = s;
//        NSLog(@"%lu",[s retainCount]);
        
//    }
    return 0;
}

