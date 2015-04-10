//
//  TestQueue.m
//  BasicObjectiveC
//
//  Created by 中村 彩香 on 2015/04/10.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import "TestQueue.h"

@interface TestQueue ()

@property (nonatomic, strong) NSMutableArray *queue;

@end

@implementation TestQueue


// 123 →　123

- (id)init
{
    self = [super init];
    
    if (self) {
        _queue = [NSMutableArray array];
    }
    return self;
}

- (void)push:(id)object
{
    [_queue insertObject:object atIndex:0];
    
}

- (id)pop
{
    NSString* popObj = nil;
    popObj = [_queue lastObject];
    [_queue removeObject:popObj];
    return popObj;
}

- (NSInteger)queueSize
{
    return [_queue count];
}

@end
