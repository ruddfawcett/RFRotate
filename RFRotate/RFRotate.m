//
//  RFRotate.m
//  RFRotateDemo
//
//  Created by Rudd Fawcett on 12/13/13.
//  Copyright (c) 2013 Rudd Fawcett. All rights reserved.
//

#import "RFRotate.h"

#define DegreesToRadians(x) ((x) * M_PI / 180.0)

@implementation RFRotate

+ (void)rotate90:(UIView*)view withDuration:(NSTimeInterval)duration {
    [UIView animateWithDuration:duration delay:0 options:0 animations: ^{
        view.transform = CGAffineTransformRotate(view.transform, DegreesToRadians(90));
    } completion: ^(BOOL completed) {
        if (!completed) {
            [self rotate90:view withDuration:duration];
        }
    }];
}

+ (void)rotate180:(UIView*)view withDuration:(NSTimeInterval)duration {
    [UIView animateWithDuration:duration delay:0 options:0 animations: ^{
        view.transform = CGAffineTransformRotate(view.transform, -3.141593);
    } completion: ^(BOOL completed) {
        if (!completed) {
            [self rotate180:view withDuration:duration];
        }
    }];
}

+ (void)rotate:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees {
    [UIView animateWithDuration:duration delay:0 options:0 animations: ^{
        view.transform = CGAffineTransformRotate(view.transform, DegreesToRadians(degrees));
    } completion: ^(BOOL completed) {
        if (!completed) {
            [self rotate:view withDuration:duration andDegrees:degrees];
        }
    }];
}

+ (void)rotateWithFlex:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees {
    [UIView animateWithDuration:0.3 delay:0 options:0 animations: ^{
        view.transform = CGAffineTransformRotate(view.transform, DegreesToRadians(-5));
    } completion: ^(BOOL completed) {
        if (completed) {
            [UIView animateWithDuration:duration delay:0 options:0 animations: ^{
                view.transform = CGAffineTransformRotate(view.transform, DegreesToRadians(degrees+5));
            } completion: ^(BOOL completed) {
                if (!completed) {
                    [self rotateWithFlex:view withDuration:duration andDegrees:degrees];
                }
            }];
        }
    }];
}

+ (void)rotate90:(UIView*)view withDuration:(NSTimeInterval)duration andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion {
    [UIView animateWithDuration:duration delay:0 options:0 animations: ^{
        block();
        view.transform = CGAffineTransformRotate(view.transform, DegreesToRadians(90));
    } completion: ^(BOOL completed) {
        if (!completed) {
            [self rotate90:view withDuration:duration];
        }
        else {
            if (completion != nil) {
                completion();
            }
        }
    }];
}

+ (void)rotate180:(UIView*)view withDuration:(NSTimeInterval)duration andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion {
    [UIView animateWithDuration:duration delay:0 options:0 animations: ^{
        block();
        view.transform = CGAffineTransformRotate(view.transform, -3.141593);
    } completion: ^(BOOL completed) {
        if (!completed) {
            [self rotate180:view withDuration:duration];
        }
        else {
            if (completion != nil) {
                completion();
            }
        }
    }];
}

+ (void)rotate:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion {
    [UIView animateWithDuration:duration delay:0 options:0 animations: ^{
        block();
        view.transform = CGAffineTransformRotate(view.transform, DegreesToRadians(degrees));
    } completion: ^(BOOL completed) {
        if (!completed) {
            [self rotate:view withDuration:duration andDegrees:degrees];
        }
        else {
            if (completion != nil) {
                completion();
            }
        }
    }];
}

+ (void)rotateWithFlex:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion {
    [UIView animateWithDuration:0.3 delay:0 options:0 animations: ^{
        view.transform = CGAffineTransformRotate(view.transform, DegreesToRadians(-5));
    } completion: ^(BOOL completed) {
        if (completed) {
            [UIView animateWithDuration:duration delay:0 options:0 animations: ^{
                block();
                view.transform = CGAffineTransformRotate(view.transform, DegreesToRadians(degrees+5));
            } completion: ^(BOOL completed) {
                if (!completed) {
                    [self rotateWithFlex:view withDuration:duration andDegrees:degrees];
                }
                else {
                    if (completion != nil) {
                        completion();
                    }
                }
            }];
        }
    }];
}

@end
