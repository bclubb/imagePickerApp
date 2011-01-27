//
//  imagePickerAppViewController.h
//  imagePickerApp
//
//  Created by Brian Clubb on 1/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface imagePickerAppViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>{
	UIImagePickerController *picker;
	UIImageView *selectedImage;
}

@property (nonatomic, retain) UIImagePickerController* picker;

-(IBAction) buttonClicked;

@end

