//
//  Student.h
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"
#import "Book.h"
@interface Student : Person
@property(nonatomic,retain)NSString *sno;
@property(nonatomic,retain)Book * book;
-(id)initWithName:(NSString *)name andAge:(int)age andPid:(NSString *)pid andSno:(NSString *)sno;
@end
