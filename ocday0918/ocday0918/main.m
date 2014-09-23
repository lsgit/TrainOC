//
//  main.m
//  ocday0918
//
//  Created by liushuai on 14-9-18.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"宋江",@"及时雨",@"宋江",@"及时风", nil];
        NSLog(@"%@",dic);
        NSArray *keyArray = [dic allKeys];
        NSArray *valueArray = [dic allValues];
//        for (int i=0 ; i<[dic count]; i++) {
//            NSLog(@"%@,%@",keyArray[i],valueArray[i]);
//        }
        NSMutableDictionary *dict = [[NSMutableDictionary alloc]initWithCapacity:5];
        [dict setObject:@"鲁智深" forKey:@"花和尚"];
        [dict setObject:@"li kui" forKey:@"black wind"];
        [dict setValue:@"hahaah" forKey:@"black wind"];
        [dict setObject:@"dddd" forKey:@"black wind"];
        //[dict setValue:@"hahaah" forKey:@"black wind"];
//        NSLog(@"%@",dict);
        
        NSSet *set = [[NSSet alloc]initWithObjects:@"1",@"2", nil];
        NSString *s1 = [[NSString alloc]initWithFormat:@"%@",@"3"];
        id x = [set member:s1];
        NSLog(@"%@",x);
        
        
        for (id x in set) {
            NSLog(@"%@",x);
        }
        for (NSString *x in dict) {
            NSLog(@"%@",x);
        }
        
        NSEnumerator *enumKey = [dict keyEnumerator];
        id y;
        while (y=[enumKey nextObject]) {
            NSLog(@"key:%@",y);
        }
        
        
        
        NSArray *array52 = @[@"1",@"2",@"3",@"4",@"10",@"9",@"77",@"55"];
        for (NSString *x in array52) {
            NSLog(@"%@",x);
        }
        
        enumKey = [array52 objectEnumerator];
        while (y=[enumKey nextObject]) {
            NSLog(@"%@",y);
        }
        
        NSArray *sarray = [array52 sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"%@",sarray);
        
    }
    return 0;
}

