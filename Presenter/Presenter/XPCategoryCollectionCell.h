//
//  XPCategoryCollectionCell.h
//  Fieldmax
//
//  Created by Sadasivan Arun on 4/21/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XPCategoryCollectionCell : UICollectionViewCell

@property(nonatomic,strong)IBOutlet UIScrollView *horizontalScroller;

-(void)updateCell:(id)object forSection:(NSInteger)section;

@end
