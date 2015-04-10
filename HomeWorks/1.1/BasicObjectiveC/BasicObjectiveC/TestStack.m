//
//  TestStack.m
//  BasicObjectiveC
//
//  Created by 中村 彩香 on 2015/04/10.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import "TestStack.h"

@interface TestStack()

@property (nonatomic, strong)NSMutableArray *stack;

@end

@implementation TestStack
// 123 →　321

- (id)init
{
    self = [super init];
    if (self) {
        _stack = [NSMutableArray array];
    }
    
    return self;
}

- (void)push:(id)object
{
    [_stack insertObject:object atIndex:0];
}

- (id)pop
{
    id stackObj;
    stackObj = [_stack objectAtIndex:0];
    [_stack removeObject:stackObj];
    return stackObj;
}

- (NSInteger)stackSize
{
    return [_stack count];
}

@end
