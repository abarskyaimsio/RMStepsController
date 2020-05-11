//
//  RMDemoStepController.m
//  RMStepsController-Demo
//
//  Created by Roland Moers on 14.11.13.
//  Copyright (c) 2013 Roland Moers
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "RMModalStepsController.h"

@interface RMModalStepsController ()

@end

@implementation RMModalStepsController

#pragma mark - Init and Dealloc
- (void)viewDidLoad {
    [super viewDidLoad];

    self.stepsBar.allowBackward = YES;
}

- (NSArray *)stepViewControllers {
    UIViewController *step1 = [self.storyboard instantiateViewControllerWithIdentifier:@"SomeStep"];
    step1.step.title = @"Step 1";
    
    UIViewController *step2 = [self.storyboard instantiateViewControllerWithIdentifier:@"SomeStep2"];
    step2.step.title = @"Step 2";
    
    UIViewController *step3 = [self.storyboard instantiateViewControllerWithIdentifier:@"SomeStep3"];
    step3.step.title = @"Step 3";
    
    UIViewController *step4 = [self.storyboard instantiateViewControllerWithIdentifier:@"SomeStep4"];
    step4.step.title = @"Step 4";

    UIViewController *step5 = [self.storyboard instantiateViewControllerWithIdentifier:@"SomeStep5"];
    step5.step.title = @"Step 5";

    UIViewController *step6 = [self.storyboard instantiateViewControllerWithIdentifier:@"SomeStep6"];
    step6.step.title = @"Step 6";

    UIViewController *step7 = [self.storyboard instantiateViewControllerWithIdentifier:@"SomeStep7"];
    step7.step.title = @"Step 7";

    UIViewController *step8 = [self.storyboard instantiateViewControllerWithIdentifier:@"SomeStep8"];
    step8.step.title = @"Step 8";
    
    return @[step1, step2, step3, step4, step5, step6, step7, step8];
}

- (void)finishedAllSteps {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)canceled {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
