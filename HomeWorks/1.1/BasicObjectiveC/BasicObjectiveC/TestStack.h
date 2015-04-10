//
//  TestStack.h
//  BasicObjectiveC
//
//  Created by 中村 彩香 on 2015/04/10.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestStack : NSObject

- (void)push:(id)object;
- (id)pop;
- (NSInteger)stackSize;

@end
