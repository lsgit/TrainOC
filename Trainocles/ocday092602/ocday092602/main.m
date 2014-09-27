//
//  main.m
//  ocday092602
//
//  Created by liushuai on 21-9-26.
//  Copyright (c) 2021年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    
        NSDictionary *dict = [NSDictionary dictionaryWithObject:@"a value" forKey:@"aKey"];
        NSLog(@"%@",[dict objectForKey:@"aKey"]);
        [dict release];
    
    return 0;
}

