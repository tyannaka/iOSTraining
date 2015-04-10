//
//  EFMSecondViewController.h
//  EternalForceModal
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import <UIKit/UIKit.h>

// TODO
// delegateのためのプロトコルを定義
@protocol EMFSecondViewControllerDelegate;

@interface EFMSecondViewController : UIViewController
@property (nonatomic, weak) id<EMFSecondViewControllerDelegate> delegate;
@end

@protocol EMFSecondViewControllerDelegate <NSObject>

- (void)closeButtonTapped:(EFMSecondViewController *)controller;

@end



/*
 
 #import <UIKit/UIKit.h>
 
 @protocol  ModalViewControllerDelegate;
 
 
 
 @interface ModelViewController : UIViewController
 
 @property (nonatomic, strong) NSString *message;
 @property (nonatomic, weak) id<ModalViewControllerDelegate>delegate;
 @end
 
 @protocol ModalViewControllerDelegate <NSObject>
 - (void)closeButtonTapped:(ModelViewController *)controlelr;
 @end
 */