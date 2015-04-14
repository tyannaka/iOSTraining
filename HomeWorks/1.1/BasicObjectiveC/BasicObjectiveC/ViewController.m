//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"
#import "TestStack.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *array1;
@property (nonatomic,strong) NSArray *array2;

@property (nonatomic, strong) NSDictionary *dict1;
@property (nonatomic, strong) NSDictionary *dict2;
@property (nonatomic, strong) NSDictionary *dict3;
@property (nonatomic, strong) NSDictionary *dict4;
@property (nonatomic, strong) NSDictionary *dict5;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    [self reproduceObject];
    [self testQueue];
    [self testStack];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)reproduceObject
{
    _array1 = @[@"list_voice.pl", @"list_diary.pl",@"list_mymall_item.pl"];
    
    _dict1 = @{@"domain":@"mixi.jp",
               @"entry":_array1};
    
    _dict2 = @{@"tag_id":@"7"};
    
    _dict3 = @{@"path":@"app_diary.pl",
               @"query":_dict2};
    
    _dict4 = @{@"domain":@"mmall.jp",
               @"entry":_dict3};
    
    _dict5 = @{@"domain":@"itunes.apple.com"};
    
    _array2 = @[_dict1,_dict4,_dict5];
    
    NSLog(@"%@",_array2);
}

- (void)testQueue
{
    TestQueue *queue = [[TestQueue alloc] init];
    
    for (int i = 0; i<=10; i++) {
        [queue push:[NSString stringWithFormat:@"%d",i]];
    }
    
    NSLog(@"%@", [queue pop]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%@", [queue pop]);
}

- (void)testStack
{
    TestStack *stack = [[TestStack alloc] init];
    
    for (int i = 0; i<=10; i++) {
        [stack push:[NSString stringWithFormat:@"%d",i]];
    }
    
    NSLog(@"%@", [stack pop]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"%@", [stack pop]);
}


@end

