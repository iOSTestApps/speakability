// Speakability - Final Year Project
// Author: Andrew Raynes
// Tutor: Baihua Li
// Developed from October 2013 to March 2014


#import "CTLeftToRightSegue.h"
@implementation CTLeftToRightSegue

-(void)perform {
    
    __block UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    __block UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    
    CATransition* transition = [CATransition animation];
    transition.duration = .40;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    transition.subtype = kCATransitionFromLeft;
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
        
}

@end