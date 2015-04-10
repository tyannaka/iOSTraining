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

@property (nonatomic, strong) NSArray *array1;
@property (nonatomic, strong) NSArray *array2;
@property (nonatomic, strong) NSMutableDictionary *mutableDict1;
@property (nonatomic, strong) NSMutableDictionary *mutableDict2;
@property (nonatomic, strong) NSMutableDictionary *mutableDict3;
@property (nonatomic, strong) NSDictionary *dict4;
@property (nonatomic, strong) NSDictionary *dict5;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    _array1 = [NSArray array];
    _array1 = @[@"list_voice.pl", @"list_diary.pl",@"list_mymall_item.pl"];
    

    _dict4 = @{@"tag_id":@"7"};

    _mutableDict3 = [NSMutableDictionary dictionary];
    _mutableDict3[@"path"] = @"add_diary_pl";
    _mutableDict3[@"query"] = _dict4;

    _mutableDict2 = [NSMutableDictionary dictionary];
    _mutableDict2[@"domain"] = @"mmail.jp";
    _mutableDict2[@"entry"] = _mutableDict3;
    
    _mutableDict1 = [NSMutableDictionary dictionary];
    _mutableDict1[@"domain"] = @"mixi.jp";
    _mutableDict1[@"entry"] = _array1;
    
    _dict5 = @{@"domain":@"itunes.apple.com"};

    
    _array2 = @[_mutableDict1,_mutableDict2,_mutableDict3,_dict5];
    
    
    NSLog(@"mutableDict = %@",_array2);

    [self testQueue];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

