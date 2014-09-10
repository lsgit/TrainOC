//
//  main.m
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"
#import "Book.h"
#import "Student.h"
int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Author *author = [[[Author alloc]initWithName:@"ZUOZHE" andAge:20 andPid:@"00001" andAid:@"100001"] autorelease];
        Book *abook = [[[Book alloc]initWithName:@"sishen" andPublishName:@"chubanshe" andAuthor:author]autorelease ];
        Student *stu1 = [[[Student alloc]initWithName:@"liushuai" andAge:19 andPid:@"10101" andSno:@"201150118"] autorelease];
        stu1.book = abook;
        
        
        
    }
    
    
    
    
    
    return 0;
}

