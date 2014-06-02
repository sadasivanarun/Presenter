//
//  XPCategoryCollectionCell.m
//  Fieldmax
//
//  Created by Sadasivan Arun on 4/21/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "XPCategoryCollectionCell.h"

#include <stdlib.h>

@implementation XPCategoryCollectionCell
@synthesize horizontalScroller;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        // Initialization code
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"XPCategoryCollectionCell" owner:self options:nil];
        
        if ([arrayOfViews count] < 1) {
            return nil;
        }
        
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        
        self = [arrayOfViews objectAtIndex:0];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)updateCell:(id)object forSection:(NSInteger)section
{
    switch (section) {
        case 0:
            self.backgroundColor = [UIColor colorWithRed:(189.0/255.0) green:(190.0/255.0) blue:(194.0/255.0) alpha:1.0];
            break;
            
        case 1:
            self.backgroundColor = [UIColor colorWithRed:(255.0/255.0) green:(190.0/255.0) blue:(194.0/255.0) alpha:1.0];
            break;
            
        case 2:
            self.backgroundColor = [UIColor colorWithRed:(189.0/255.0) green:(255.0/255.0) blue:(194.0/255.0) alpha:1.0];
            break;
            
        case 3:
            self.backgroundColor = [UIColor colorWithRed:(189.0/255.0) green:(190.0/255.0) blue:(255.0/255.0) alpha:1.0];
            break;
            
        case 4:
            self.backgroundColor = [UIColor colorWithRed:(100/255.0) green:(190.0/255.0) blue:(194.0/255.0) alpha:1.0];
            break;
            
        case 5:
            self.backgroundColor = [UIColor colorWithRed:(255.0/255.0) green:(190.0/255.0) blue:(194.0/255.0) alpha:1.0];
            break;
            
        case 6:
            self.backgroundColor = [UIColor colorWithRed:(189.0/255.0) green:(255.0/255.0) blue:(194.0/255.0) alpha:1.0];
            break;
            
        case 7:
            self.backgroundColor = [UIColor colorWithRed:(189.0/255.0) green:(190.0/255.0) blue:(255.0/255.0) alpha:1.0];
            break;
            
        case 8:
            self.backgroundColor = [UIColor colorWithRed:(100/255.0) green:(190.0/255.0) blue:(194.0/255.0) alpha:1.0];
            break;
            
        default:
            break;
    }
    
}

@end
