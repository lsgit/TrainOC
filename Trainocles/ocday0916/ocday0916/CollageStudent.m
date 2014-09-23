//
//  CollageStudent.m
//  ocday0916
//
//  Created by liushuai on 14-9-16.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "CollageStudent.h"

@implementation CollageStudent
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(NSUInteger)age school:(NSString *)schoolname sno:(NSString *)sno major:(NSString *)major academy:(NSString *)academy
{
    self = [self initWithName:name gender:gender age:18];
    self.sno = sno;
    self.schoolName = schoolname;
    _major = major;
    _academy = academy;
    return self;
}
-(void)sayHi
{
    NSLog(@"I am %@,sex%@,age:%lu,shcoolname is%@,sno:%@,study%@, at%@",self.name,self.gender,self.age,self.schoolName,self.sno,self.major,self.academy);
}
- (void)study
{
    [super study];
    NSLog(@"i am study hard");
}
+ (instancetype)collageStudentWithName:(NSString *)name gender:(NSString *)gender age:(NSUInteger)age school:(NSString *)schoolname sno:(NSString *)sno major:(NSString *)major academy:(NSString *)academy
{
    CollageStudent *c = [[CollageStudent alloc]initWithName:name gender:gender age:age school:schoolname sno:sno major:major academy:academy];
    return c;
}
@end
