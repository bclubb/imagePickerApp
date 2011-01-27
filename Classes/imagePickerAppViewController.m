//
//  imagePickerAppViewController.m
//  imagePickerApp
//
//  Created by Brian Clubb on 1/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "imagePickerAppViewController.h"

@implementation imagePickerAppViewController

@synthesize picker;

- (void) viewDidLoad{
	self.picker = [[[UIImagePickerController alloc] init] autorelease];
	self.picker.delegate = self;
	[selectedImage setImage:image];
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.picker = nil;
}

- (void)dealloc {
	[selectedImage release];
	[image release];
	[picker release];
    [super dealloc];
}

- (IBAction) buttonClicked{
	
	if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
		self.picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	} else {
		self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	}
	
	[self presentModalViewController:self.picker animated:YES];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)Picker {
	[self dismissModalViewControllerAnimated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)Picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
	image = (UIImage *)[info valueForKey:UIImagePickerControllerOriginalImage];
	[selectedImage setImage:image];
	[self dismissModalViewControllerAnimated:YES];
}

@end
