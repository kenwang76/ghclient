//
//  LoginViewController.m
//  GBClient
//
//  Created by Aardwolf.K on 9/22/15.
//  Copyright © 2015 Aardwolf.K. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UILabel *emailLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 20)];
    [emailLabel setText:@"Email:"];
    [self.view addSubview:emailLabel];
    
    UITextField *emailText = [[UITextField alloc]initWithFrame:CGRectMake(200, 100, 100, 20)];
    emailText.borderStyle = UITextBorderStyleRoundedRect;
    emailText.keyboardType = UIKeyboardTypeEmailAddress;
    [self.view addSubview:emailText];
    
    UILabel *passLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 100, 20)];
    [passLabel setText:@"Password:"];
    [self.view addSubview:passLabel];
    
    UITextField *passText = [[UITextField alloc]initWithFrame:CGRectMake(200, 200, 100, 20)];
    passText.borderStyle = UITextBorderStyleRoundedRect;
    passText.keyboardType = UIKeyboardTypeDefault;
    [self.view addSubview:passText];
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginButton.frame = CGRectMake(150, 300, 100, 30);
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - user event
- (void)loginButtonClicked:(id)sender {
    MainViewController *main = [[MainViewController alloc]init];
    [self presentViewController:main animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
