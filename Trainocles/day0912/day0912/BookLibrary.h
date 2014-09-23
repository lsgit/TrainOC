//
//  BookLibrary.h
//  day0912
//
//  Created by liushuai on 14-9-17.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;
@interface BookLibrary : NSObject
{
    NSMutableArray *_bookArray;
}
- (id)initWithBookArray:(NSMutableArray *)bookArray;
- (NSMutableArray *)addBook:(Book *)book;
- (NSMutableArray *)deleteBook:(Book *)book;
- (NSMutableArray *)replaceBook:(Book *)book withNewBook:(Book *)newBook;
- (void)findBook:(Book *)book;
- (NSMutableArray *)getAllBook;
@end
