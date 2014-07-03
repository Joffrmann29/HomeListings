//
//  ViewController.h
//  HomeListings
//
//  Created by Administrator on 7/2/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;
@property (strong, nonatomic) IBOutlet UILabel *squareFootageLabel;
@property (strong, nonatomic) IBOutlet UILabel *bedroomLabel;
@property (strong, nonatomic) IBOutlet UILabel *bathroomLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) UIImage *homeImage;

@property (nonatomic) int price;
@property (nonatomic) int sqFootage;
@property (nonatomic) int bedrooms;
@property (nonatomic) int bathrooms;

@end
