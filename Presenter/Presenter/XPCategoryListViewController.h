//
//  XPCategoryListViewController.h
//  Fieldmax
//
//  Created by Sadasivan Arun on 4/21/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XPCategoryCollectionCell.h"
#import "XPMasterViewController.h"
@interface XPCategoryListViewController : XPMasterViewController<UIAlertViewDelegate,UICollectionViewDataSource, UICollectionViewDelegate,UISearchBarDelegate>
{
    
}
@property (nonatomic, weak)IBOutlet UICollectionView *collectionView;
@property(nonatomic,strong)IBOutlet UISearchBar *categorySearchBar;
@property(nonatomic,strong)IBOutlet UILabel *categoryTitleLabel;

- (id)initWithLevel:(NSInteger)level andParentId:(NSInteger)parentID andScreenTitle:(NSString *)title;


@end
