//
//  RFRotate.h
//  RFRotateDemo
//
//  Created by Rudd Fawcett on 12/13/13.
//  Copyright (c) 2013 Rudd Fawcett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFRotate : NSObject

+ (void)rotate90:(UIView*)view withDuration:(NSTimeInterval)duration;
+ (void)rotate180:(UIView*)view withDuration:(NSTimeInterval)duration;
+ (void)rotate:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees;
+ (void)rotateWithFlex:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees;

+ (void)rotate90:(UIView*)view withDuration:(NSTimeInterval)duration andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion;
+ (void)rotate180:(UIView*)view withDuration:(NSTimeInterval)duration andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion;
+ (void)rotate:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion;
+ (void)rotateWithFlex:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion;

@end
