//
//  Book.h
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"
@interface Book : NSObject
@property(nonatomic,retain)NSString *name;
@property(nonatomic,retain)NSString *publishName;
@property(nonatomic,retain)Author *author;
-(id)initWithName:(NSString *)bookname andPublishName:(NSString *)pname andAuthor:(Author *)author;
@end
