//
//  XPCategoryListViewController.m
//  Fieldmax
//
//  Created by Sadasivan Arun on 4/21/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "XPCategoryListViewController.h"
#define ImageUrl @ "https://dl.dropboxusercontent.com/u/48235081/images.png"

@interface XPCategoryListViewController ()
{
    
}
@property (nonatomic, assign)NSInteger parentId;
@property (nonatomic, assign)NSInteger attributeLevel;
@property (nonatomic, strong)NSString *screenTitle;
@property (nonatomic, strong)NSMutableDictionary *categoryDict;
@end

@implementation XPCategoryListViewController
@synthesize collectionView;
@synthesize parentId;
@synthesize attributeLevel;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithLevel:(NSInteger)level andParentId:(NSInteger)parentID andScreenTitle:(NSString *)title
{
    self = [super init];
    if (self) {
        // Custom initialization
        self.attributeLevel = level;
        self.parentId = parentID;
        self.screenTitle = title;
    }
    return self;
}


-(id)initWithDictionary:(NSMutableDictionary*)dictionary
{
    self = [super init];
    if (self) {
        // Custom initialization
        self.categoryDict = dictionary;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupCollectionView];
  
    // Do any additional setup after loading the view from its nib.
    
}

-(void)addTitle:(NSString *)titleName
{
    [self.navigationItem setTitle:titleName];
}

-(void)addScreenTitle:(NSString *)title
{
    self.categoryTitleLabel.text = title;
    self.categoryTitleLabel.font = [UIFont fontWithName:@"OpenSans-Bold" size:18.0];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]){
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setupCollectionView {
    [self.collectionView registerClass:[XPCategoryCollectionCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    [flowLayout setMinimumInteritemSpacing:10.0f];
    [flowLayout setMinimumLineSpacing:15.0f];
    [self.collectionView setPagingEnabled:NO];
    [self.collectionView setCollectionViewLayout:flowLayout];
    [self.collectionView setBackgroundColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]];
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 8;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
        return 1;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    XPCategoryCollectionCell *cell = (XPCategoryCollectionCell *)[self.collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    [cell updateCell:nil forSection:indexPath.section];
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(768, 145);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: Select Item
    
}


@end
