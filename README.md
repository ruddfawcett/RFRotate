RFRotate
========

Drop in rotations for your iOS project.  Support for blocks.

##Installation

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like RFRotate in your projects.

#### Podfile

```ruby
platform :ios, '7.0'
pod "RFRotate", "~> 1.0"
```

### Installation without CocoaPods

Just drag the RFRotate folder into your project and import it.

```
#import 'RFRotate.h'
```

## Use

RFRotate is very simple to install and use.  [See the demo](RFRotateDemo/RFRotateDemo/ViewController.m) for more information, but here is an example.


```objective-c
[RFRotate rotateWithFlex:_greenView withDuration:1 andDegrees:90 andBlock:^{
    _greenView.backgroundColor = [UIColor wetAsphaltColor];
} andCompletion:nil];
```

Hope you enjoy it!

## Methods

```objective-c
+ (void)rotate90:(UIView*)view withDuration:(NSTimeInterval)duration;
// Rotate view 90 degrees

+ (void)rotate180:(UIView*)view withDuration:(NSTimeInterval)duration;
// Rotate view 180 degrees

+ (void)rotate:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees;
// Rotate view x degrees for length of time

+ (void)rotateWithFlex:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees;
// Rotate the view with an elastically "flex" for time and with x degrees


//These are the same as the above, just with blocks for completion and execution
+ (void)rotate90:(UIView*)view withDuration:(NSTimeInterval)duration andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion;
+ (void)rotate180:(UIView*)view withDuration:(NSTimeInterval)duration andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion;
+ (void)rotate:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion;
+ (void)rotateWithFlex:(UIView*)view withDuration:(NSTimeInterval)duration andDegrees:(NSInteger)degrees andBlock:(void (^)(void))block andCompletion:(void (^)(void))completion;
```

##Screenshots

![Screenshot 1](http://i.imgur.com/f2tVRxx.gif)
![Screenshot 2](http://i.imgur.com/Hpgesyf.png)

##License

The MIT License (MIT)

Copyright (c) 2013 Rudd Fawcett

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.