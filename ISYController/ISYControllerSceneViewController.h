//
//  ISYControllerSceneViewController.h
//  ISYController
//
//  Created by Nandor Szots on 12/23/11.
//  Copyright (c) 2011 Umbra LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ISYBrain.h"
#import "ISYDevice.h"
#import "ISYControllerAppDelegate.h"
#import "LightDetailsViewController.h"

@interface ISYControllerSceneViewController : UIViewController 

@property (nonatomic, assign) ISYControllerAppDelegate* delegate;
@property (nonatomic, weak) ISYBrain* brain;
@property enum eISYDeviceType eCurType;
@property (weak, nonatomic) IBOutlet UITableView *sceneTableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *refreshButton;
@property (weak, nonatomic) IBOutlet UIView *refreshView;

- (IBAction)refreshDevices:(id)sender;

@end
