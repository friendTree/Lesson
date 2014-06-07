//
//  ViewController.m
//  ekiden
//
//  Created by 葛 智紀 on 2014/06/01.
//  Copyright (c) 2014年 葛 智紀. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

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
    
    // ツイッターアカウントを取得
    ACAccountStore *store = [[ACAccountStore alloc]init];
    ACAccountType *twitterType = [store accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    void (^__block accountBlock)(BOOL, NSError*) = ^(BOOL granted, NSError* error) {
        if (granted) {
            
            // Twitterは複数アカウントでログイン可能の為、結果がArrayで返ってきます。
            NSArray* accounts = [store accountsWithAccountType:twitterType];
            
            if (accounts.count == 0) {
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"アカウント情報がありません" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
            };
        };
    [store requestAccessToAccountsWithType:twitterType
                                          options:nil
                                       completion:accountBlock ];
    };
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
