//
//  ViewController.m
//  RFRotateDemo
//
//  Created by Rudd Fawcett on 12/13/13.
//  Copyright (c) 2013 Rudd Fawcett. All rights reserved.
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
    
    // Red square
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rotateRed)];
    
    _redView = [[UIView alloc] initWithFrame:CGRectMake(20, 84, 130, 130)];
    _redView.backgroundColor = [UIColor alizarinColor];
    _redView.gestureRecognizers = @[tapGesture];
    
    [_redView addSubview:[self arrowImage]];
    
    [self.view addSubview:_redView];
    
    // Blue square
    
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rotateBlue)];
    
    _blueView = [[UIView alloc] initWithFrame:CGRectMake(170, 84, 130, 130)];
    _blueView.backgroundColor = [UIColor peterRiverColor];
    _blueView.gestureRecognizers = @[tapGesture2];
    
    [_blueView addSubview:[self arrowImage]];
    
    [self.view addSubview:_blueView];
    
    // Green square
    
    UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rotateGreen)];
    
    _greenView = [[UIView alloc] initWithFrame:CGRectMake(20, 234, 130, 130)];
    _greenView.backgroundColor = [UIColor emeraldColor];
    _greenView.gestureRecognizers = @[tapGesture3];
    
    [_greenView addSubview:[self arrowImage]];
    
    [self.view addSubview:_greenView];
    
    // Purple square
    
    UITapGestureRecognizer *tapGesture4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rotatePurple)];
    
    _purpleView = [[UIView alloc] initWithFrame:CGRectMake(170, 234, 130, 130)];
    _purpleView.backgroundColor = [UIColor amethystColor];
    _purpleView.gestureRecognizers = @[tapGesture4];

    [_purpleView addSubview:[self arrowImage]];
    
    [self.view addSubview:_purpleView];
}

- (UIImageView*)arrowImage {
    UIImage *upArrowImage = [UIImage imageNamed:@"up_arrow"];
    UIImageView *upArrow = [[UIImageView alloc] initWithImage:upArrowImage];
    upArrow.frame = CGRectMake((130-upArrowImage.size.width)/2, (130-upArrowImage.size.height)/2, upArrowImage.size.width, upArrowImage.size.height);
    
    return upArrow;
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
        [UIView animateWithDuration:1 delay:0 options:0 animations: ^{
            _purpleView.backgroundColor = [UIColor amethystColor];
        } completion: ^(BOOL completed) {
            if (!completed) {
                [self rotatePurple];
            }
        }];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
