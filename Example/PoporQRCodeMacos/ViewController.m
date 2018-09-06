//
//  ViewController.m
//  PoporQRCodeMacos
//
//  Created by apple on 2018/9/5.
//  Copyright © 2018年 popor. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "ZwcQRCode.h"

@interface ViewController ()

@property (nonatomic, strong) NSImageView * qrIV;
@property (nonatomic, strong) NSTextView * qrTV;
@property (nonatomic, strong) NSButton * qrBT;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 200;
    
    NSImageView *qrIV;
    NSTextView * qrTV;
    NSButton * qrBT;
    {
        qrIV = [[NSImageView alloc] initWithFrame:CGRectZero];
        //qrIV.frame = CGRectMake(20, 70, width, width);
        qrIV.layer.shadowColor = [NSColor blackColor].CGColor;
        qrIV.layer.shadowOffset = CGSizeMake(1, 2);
        qrIV.layer.shadowRadius = 1;
        qrIV.layer.shadowOpacity = 0.5;
        [self.view addSubview:qrIV];
    }
    {
        qrTV = [[NSTextView alloc] initWithFrame:CGRectZero];
        qrTV.string = @"http://www.jianshu.com/users/38eff8c577a1/latest_articles";
        
        
        [self.view addSubview:qrTV];
        
    }
    {
        qrBT = [NSButton buttonWithTitle:@"Generate" target:self action:@selector(createQrImageAction)];
        [self.view addSubview:qrBT];
    }
    [qrBT mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(40);
        make.bottom.mas_equalTo(-20);
    }];
    [qrTV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(20);
        make.bottom.mas_equalTo(qrBT.mas_top).mas_offset(-20);
    }];
    [qrIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(qrTV.mas_top);
        make.right.mas_equalTo(-20);
        make.bottom.mas_equalTo(qrTV.mas_bottom);
        make.width.mas_equalTo(qrIV.mas_height);
        make.left.mas_equalTo(qrTV.mas_right).mas_offset(20);
    }];
    
    self.qrBT = qrBT;
    self.qrTV = qrTV;
    self.qrIV = qrIV;
    [self createQrImageAction];
}

- (void)createQrImageAction {
    self.qrIV.image = [ZwcQRCode qrImageWithContent:self.qrTV.string logo:nil size:200 red:20 green:100 blue:100];
}

@end
