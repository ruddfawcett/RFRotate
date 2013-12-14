//
//  ViewController.m
//  RFRotateDemo
//
//  Created by Rex Finn on 12/13/13.
//  Copyright (c) 2013 Rex Finn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong,nonatomic) UIView *redView;
@property (strong,nonatomic) UIView *blueView;
@property (strong,nonatomic) UIView *greenView;
@property (strong,nonatomic) UIView *purpleView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"RFRotate";
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rotateRed)];
    
    _redView = [[UIView alloc] initWithFrame:CGRectMake(20, 84, 130, 130)];
    _redView.backgroundColor = [UIColor alizarinColor];
    _redView.gestureRecognizers = @[tapGesture];
    
    UIImage *upArrowImage = [UIImage imageNamed:@"up_arrow"];
    UIImageView *upArrow = [[UIImageView alloc] initWithFrame:CGRectMake((_redView.frame.size.width-upArrowImage.size.width)/2, (_redView.frame.size.height-upArrowImage.size.height)/2, upArrowImage.size.width, upArrowImage.size.height)];
    upArrow.image = upArrowImage;
    
    [_redView addSubview:upArrow];
    
    [self.view addSubview:_redView];
    
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rotateBlue)];
    
    _blueView = [[UIView alloc] initWithFrame:CGRectMake(170, 84, 130, 130)];
    _blueView.backgroundColor = [UIColor peterRiverColor];
    _blueView.gestureRecognizers = @[tapGesture2];
    
    UIImage *upArrowImage2 = [UIImage imageNamed:@"up_arrow"];
    UIImageView *upArrow2 = [[UIImageView alloc] initWithFrame:CGRectMake((_blueView.frame.size.width-upArrowImage.size.width)/2, (_blueView.frame.size.height-upArrowImage.size.height)/2, upArrowImage.size.width, upArrowImage.size.height)];
    upArrow2.image = upArrowImage2;
    
    [_blueView addSubview:upArrow2];
    
    [self.view addSubview:_blueView];
    
    UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rotateGreen)];
    
    _greenView = [[UIView alloc] initWithFrame:CGRectMake(20, 234, 130, 130)];
    _greenView.backgroundColor = [UIColor emeraldColor];
    _greenView.gestureRecognizers = @[tapGesture3];
    
    UIImage *upArrowImage3 = [UIImage imageNamed:@"up_arrow"];
    UIImageView *upArrow3 = [[UIImageView alloc] initWithFrame:CGRectMake((_greenView.frame.size.width-upArrowImage.size.width)/2, (_greenView.frame.size.height-upArrowImage.size.height)/2, upArrowImage.size.width, upArrowImage.size.height)];
    upArrow3.image = upArrowImage3;
    
    [_greenView addSubview:upArrow3];
    
    [self.view addSubview:_greenView];
    
    UITapGestureRecognizer *tapGesture4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rotatePurple)];
    
    _purpleView = [[UIView alloc] initWithFrame:CGRectMake(170, 234, 130, 130)];
    _purpleView.backgroundColor = [UIColor amethystColor];
    _purpleView.gestureRecognizers = @[tapGesture4];
    
    UIImage *upArrowImage4 = [UIImage imageNamed:@"up_arrow"];
    UIImageView *upArrow4 = [[UIImageView alloc] initWithFrame:CGRectMake((_purpleView.frame.size.width-upArrowImage.size.width)/2, (_purpleView.frame.size.height-upArrowImage.size.height)/2, upArrowImage.size.width, upArrowImage.size.height)];
    upArrow4.image = upArrowImage4;
    
    [_purpleView addSubview:upArrow4];
    
    [self.view addSubview:_purpleView];
}

- (void)rotateRed {
    [RFRotate rotateWithFlex:_redView withDuration:1 andDegrees:90];
}

- (void)rotateBlue {
    [RFRotate rotate180:_blueView withDuration:3];
}
- (void)rotateGreen {
    [RFRotate rotateWithFlex:_greenView withDuration:1 andDegrees:90 andBlock:^{
        _greenView.backgroundColor = [UIColor wetAsphaltColor];
    } andCompletion:nil];
}

- (void)rotatePurple {
    [RFRotate rotate180:_purpleView withDuration:3 andBlock:^{
        _purpleView.backgroundColor = [UIColor asbestosColor];
    } andCompletion:^{
        _purpleView.backgroundColor = [UIColor amethystColor];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
