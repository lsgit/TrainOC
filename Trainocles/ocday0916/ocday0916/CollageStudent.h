//
//  CollageStudent.h
//  ocday0916
//
//  Created by liushuai on 14-9-16.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Student.h"

@interface CollageStudent : Student
@property NSString *major;
@property NSString *academy;
- (id)initWithName:(NSString *)name
            gender:(NSString *)gender
               age:(NSUInteger)age
            school:(NSString *)schoolname
               sno:(NSString *)sno
             major:(NSString *)major
           academy:(NSString *)academy;
- (void)sayHi;
- (void)study;
+ (instancetype) collageStudentWithName:(NSString *)name
                                 gender:(NSString *)gender
                                    age:(NSUInteger)age
                                 school:(NSString *)schoolname
                                    sno:(NSString *)sno
                                  major:(NSString *)major
                                academy:(NSString *)academy;



@end
