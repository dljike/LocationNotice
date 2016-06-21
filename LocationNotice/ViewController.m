//
//  ViewController.m
//  LocationNotice
//
//  Created by mac on 16/6/21.
//  Copyright © 2016年 dubo. All rights reserved.
//

#import "ViewController.h"

#import "UtilNotif.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    [UtilNotif registAction];
    
}

-(void)buttonAction
{
  [UtilNotif sendMess:5 body:@"大家好" noticeStr:@"欢迎光临"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








@end
