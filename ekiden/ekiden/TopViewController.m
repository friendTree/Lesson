//
//  ViewController.m
//  ekiden
//
//  Created by 葛 智紀 on 2014/06/01.
//  Copyright (c) 2014年 葛 智紀. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@property UIButton *switchButton;

@end

@implementation TopViewController

- (void)viewDidLoad
{
    // ツイートボタン
    UIButton *tweetButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    tweetButton.frame = CGRectMake(100, 100, 100, 100);
    [tweetButton setTitle:@"卓球したい" forState:UIControlStateNormal];
    [tweetButton addTarget:self action:@selector(tweetButtonToch) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:tweetButton];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)tweetButtonToch
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
