//
//  imagePickerAppAppDelegate.h
//  imagePickerApp
//
//  Created by Brian Clubb on 1/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class imagePickerAppViewController;

@interface imagePickerAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    imagePickerAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet imagePickerAppViewController *viewController;

@end

