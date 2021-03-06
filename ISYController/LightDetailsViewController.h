//
//  SceneDetailsViewController.h
//  ISYController
//
//  Created by Nandor Szots on 12/23/11.
//  Copyright (c) 2011 Umbra LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ISYBrain.h"

@class LightDetailsViewController;

@protocol LightDetailsViewControllerDelegate <NSObject>
- (void)lightDetailsViewControllerClose:(LightDetailsViewController*)controller;
- (void)toggleDevice:(NSString*)sID setOn:(BOOL)bOn;
- (void)dimDevice:(NSString*)sID setDim:(int)iValue;
@end

@interface LightDetailsViewController : UIViewController <UISplitViewControllerDelegate>

@property (nonatomic, weak) id <LightDetailsViewControllerDelegate> delegate;
@property (nonatomic, weak) ISYBrain* brain;

@property (nonatomic, strong) NSString* sCurDeviceName;
@property (nonatomic, strong) NSString* sCurDeviceID;
@property (nonatomic, strong) NSTimer*  pUpdateTimer;
@property (nonatomic) BOOL bCurrentlyOn;

@property (weak, nonatomic) IBOutlet UINavigationItem *sceneNavBar;
@property (weak, nonatomic) IBOutlet UISlider *sliderBar;
@property (weak, nonatomic) IBOutlet UIImageView *lightbulbImage;
@property (weak, nonatomic) IBOutlet UIView *configInstructions;

- (IBAction)dim:(id)sender;
- (IBAction)handleTap:(id)sender;

- (void)refreshView;
- (void)showConfigPage;

@end
