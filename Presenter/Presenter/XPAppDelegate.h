//
//  XPAppDelegate.h
//  Presenter
//
//  Created by Sadasivan Arun on 5/29/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XPCategoryListViewController.h"

@interface XPAppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) XPCategoryListViewController *categoryListVC;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
