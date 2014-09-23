//
//  AppDelegate.m
//  AddressBook
//
//  Created by liushuai on 14-9-18.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "AppDelegate.h"
#import "AddressBook.h"
#import "Contact.h"
#import "pinyin.h"
@implementation AppDelegate
AddressBook *_addressBook;
NSString *randName()
{
    NSArray *xing = @[@"zhao",@"qian",@"sun",@"li",@"wu",@"feng",@"chen"];
    NSArray *ming = @[@"yi",@"er",@"san",@"si",@"wu",@"liu",@"qi",@"ba",@"jiu",@"shi"];
    NSString *s = [NSString stringWithFormat:@"%@%@",xing[arc4random()%[xing count]],ming[arc4random()%[ming count]]];
    return s;
}
NSString *randAddress()
{
    NSString *s = [NSString stringWithFormat:@"address%c%c%c%c",arc4random()%25+'a',arc4random()%25+'a',arc4random()%25+'a',arc4random()%25+'a'];
    return s;
}
NSString *randPhone()
{
    NSString *s = [NSString stringWithFormat:@"1318888%c%c%c%c",arc4random()%9+'1',arc4random()%9+'1',arc4random()%9+'1',arc4random()%9+'1'];
    return s;
}
NSString *randSex()
{
    int i = arc4random()%100;
    if (i%2==0) {
        return @"男";
    }else{
        return @"女";
    }
}
Contact *randContact(){
    NSString *s = randName();
    Contact *c = [[Contact alloc]initWithName:s gender:randSex() phoneNumber:randPhone() address:randAddress() group:[s uppercasePinYinFirstLetter]];
    [c setAge:arc4random()%90+10];
    return c;
}
void show(NSArray *a)
{
    for (Contact *c in a) {
        NSLog(@"%@",c);
    }
}

void pro(AddressBook *addressBook,int x){
    
        printf("1、随机添加一个联系人\n");
        printf("2、获取某分组联系人 并升序\n");
        printf("3、根据电话号码获取联系人\n");
        printf("4、获取所有女性联系人\n");
        printf("5、删除一个联系人根据姓名\n");
        printf("6、删除某个分组的联系人\n");
        switch (x) {
            case 1:
            {
                [addressBook addContact:randContact()];
                show([addressBook findAll]);
            }
                break;
            case 2:
            {
                char s[10];
                scanf("%s",s);
                NSString *group = [NSString stringWithFormat:@"%s",s];
                show([addressBook findAllContactByAsecWithGroup:group]);
                
            }
                break;
            case 3:
            {
                char s[10];
                scanf("%s",s);
                NSString *name = [NSString stringWithFormat:@"%s",s];
                NSLog(@"%@",[addressBook findContactByPhoneNumber:name]);
                
            }
                break;
            case 4:
            {
                
                show([addressBook findAllGenderIsFemaleByAgeDesc]);
            }
                break;
            case 5:
            {
                char s[50];
                scanf("%s",s);
                NSString *name = [NSString stringWithFormat:@"%s",s];
                [addressBook removeContactByName:name];
                show([addressBook findAll]);
            }
                break;
            case 6:
            {
                char s[50];
                scanf("%s",s);
                NSString *group = [NSString stringWithFormat:@"%s",s];
                [addressBook removecontactByGroup:group];
                show([addressBook findAll]);
            }
                break;
            case 7:
            {
                show([addressBook findAll]);
            }
                break;
                
            default:
                break;
        }
    
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _addressBook = [[AddressBook alloc] init];
    // Insert code here to initialize your application
    CGRect rect1 = NSMakeRect(10, self.window.frame.size.height-60, 100, 20);
    NSTextField *textField1 = [[NSTextField alloc]initWithFrame:rect1];
    [self.window.contentView addSubview:textField1];
    CGRect rect3 = NSMakeRect(110, self.window.frame.size.height-60, 100, 20);
    NSButton *button1 = [[NSButton alloc]initWithFrame:rect3];
    [self.window.contentView addSubview:button1];
    [button1 setAction:@selector(show1:)];
    
    CGRect rect4 = NSMakeRect(10, self.window.frame.size.height-140, 100, 20);
    NSTextField *textField2 = [[NSTextField alloc]initWithFrame:rect4];
    [self.window.contentView addSubview:textField2];
    CGRect rect5 = NSMakeRect(110, self.window.frame.size.height-140, 100, 20);
    NSButton *button2 = [[NSButton alloc]initWithFrame:rect5];
    [self.window.contentView addSubview:button2];
    [button2 setAction:@selector(show2:)];
    
    CGRect rect6 = NSMakeRect(10, self.window.frame.size.height-180, 100, 20);
    NSTextField *textField3 = [[NSTextField alloc]initWithFrame:rect6];
    [self.window.contentView addSubview:textField3];
    CGRect rect7 = NSMakeRect(110, self.window.frame.size.height-180, 100, 20);
    NSButton *button3 = [[NSButton alloc]initWithFrame:rect7];
    [self.window.contentView addSubview:button3];
    [button3 setAction:@selector(show3:)];
    
    CGRect rect8 = NSMakeRect(10, self.window.frame.size.height-220, 100, 20);
    NSTextField *textField4 = [[NSTextField alloc]initWithFrame:rect8];
    [self.window.contentView addSubview:textField4];
    CGRect rect9 = NSMakeRect(110, self.window.frame.size.height-220, 100, 20);
    NSButton *button4 = [[NSButton alloc]initWithFrame:rect9];
    [self.window.contentView addSubview:button4];
    [button4 setAction:@selector(show4:)];
    
    CGRect rect10 = NSMakeRect(10, self.window.frame.size.height-260, 100, 20);
    NSTextField *textField5 = [[NSTextField alloc]initWithFrame:rect10];
    [self.window.contentView addSubview:textField5];
    CGRect rect11 = NSMakeRect(110, self.window.frame.size.height-260, 100, 20);
    NSButton *button5 = [[NSButton alloc]initWithFrame:rect11];
    [self.window.contentView addSubview:button5];
    [button5 setAction:@selector(show5:)];
    
    CGRect rect12 = NSMakeRect(10, self.window.frame.size.height-300, 100, 20);
    NSTextField *textField6 = [[NSTextField alloc]initWithFrame:rect12];
    [self.window.contentView addSubview:textField6];
    CGRect rect13 = NSMakeRect(110, self.window.frame.size.height-300, 100, 20);
    NSButton *button6 = [[NSButton alloc]initWithFrame:rect13];
    [self.window.contentView addSubview:button6];
    [button6 setAction:@selector(show6:)];
    CGRect rect112 = NSMakeRect(220, 20, 200, 600);
     _textView1 = [[NSTextView alloc]initWithFrame:rect112];
    [self.window.contentView addSubview:_textView1];
}
- (void)show1:(id)sender
{
    pro(_addressBook, 1);
    NSString *s = [NSString stringWithFormat:@"%@",[_addressBook findAll]];
    [_textView1 setString:s];
}
- (void)show2:(id)sender
{
    pro(_addressBook, 2);
    NSString *s = [NSString stringWithFormat:@"%@",[_addressBook findAll]];
    [_textView1 setString:s];
}
- (void)show3:(id)sender
{
    pro(_addressBook, 3);
    NSString *s = [NSString stringWithFormat:@"%@",[_addressBook findAll]];
    [_textView1 setString:s];
}
- (void)show4:(id)sender
{
    pro(_addressBook, 4);
    NSString *s = [NSString stringWithFormat:@"%@",[_addressBook findAll]];
    [_textView1 setString:s];
}
- (void)show5:(id)sender
{
    pro(_addressBook, 5);
    NSString *s = [NSString stringWithFormat:@"%@",[_addressBook findAll]];
    [_textView1 setString:s];
}
- (void)show6:(id)sender
{
    pro(_addressBook, 6);
    NSString *s = [NSString stringWithFormat:@"%@",[_addressBook findAll]];
    [_textView1 setString:s];
}
- (void)show7:(id)sender
{
    pro(_addressBook, 1);
    NSString *s = [NSString stringWithFormat:@"%@",[_addressBook findAll]];
    [_textView1 setString:s];
}

@end
