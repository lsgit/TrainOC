//
//  main.m
//  ocday092201
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gril.h"
#import "Boy.h"
#import "Mother.h"
#import "Student.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        Gril *gril = [[Gril alloc] init];
//        Boy *boy = [[Boy alloc] init];
//        [gril setHusband:boy];
//        [gril wantBaby];
//        [gril wantCar];
//        [gril wantGoodWork];
//        [gril wantHouse];
        
        Mother *m = [[Mother alloc]init];
        Student *s = [[Student alloc] init];
        [m setBaoMu:s];
        [m wantzuofan];
        [m wantdaihaizi];
        
    }
    return 0;
}

