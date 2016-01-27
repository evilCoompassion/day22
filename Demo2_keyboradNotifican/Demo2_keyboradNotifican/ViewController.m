//
//  ViewController.m
//  Demo2_keyboradNotifican
//
//  Created by tarena on 16/1/27.
//  Copyright © 2016年 EvilCompssion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showKeyboard:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(closeKeyboard:) name:UIKeyboardWillHideNotification object:nil];
    
    
    
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter]removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}


-(void)showKeyboard:(NSNotification *)notification
{
   CGFloat y = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
    NSInteger option = [notification.userInfo[UIKeyboardAnimationCurveUserInfoKey] integerValue];
    NSTimeInterval time = [notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    
    self.bottomConstraint.constant = y;
    [UIView animateWithDuration:time delay:0 options:option animations:^{
        
        [self.view layoutIfNeeded];
        
    } completion:nil];
}

-(void)closeKeyboard:(NSNotification *)notification
{
    NSInteger option = [notification.userInfo[UIKeyboardAnimationCurveUserInfoKey] integerValue];
    NSTimeInterval time = [notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    self.bottomConstraint.constant = 0;
   [UIView animateWithDuration:time delay:0 options:option animations:^{
        
        [self.view layoutIfNeeded];
        
    } completion:nil];
}

- (IBAction)clickReturnButton:(UITextField *)sender {
    
}




@end
