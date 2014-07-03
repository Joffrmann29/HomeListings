//
//  ViewController.m
//  HomeListings
//
//  Created by Administrator on 7/2/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.delegate = self;
    
    self.priceLabel.text = [NSString stringWithFormat:@"This home is listed at $%i", self.price];
    self.squareFootageLabel.text = [NSString stringWithFormat:@"The home is %i square feet", self.sqFootage];
    self.bedroomLabel.text = [NSString stringWithFormat:@"%i bedrooms", self.bedrooms];
    self.bathroomLabel.text = [NSString stringWithFormat:@"%i bathrooms", self.bathrooms];
    self.imageView = [[UIImageView alloc]initWithImage:self.homeImage];
    self.imageView.frame = CGRectMake(0, 358, 320, self.view.frame.size.height/3);
    [self.scrollView addSubview:self.imageView];
    [self.scrollView addSubview:self.bedroomLabel];
    [self.scrollView addSubview:self.bathroomLabel];
    [self.scrollView addSubview:self.priceLabel];
    [self.scrollView addSubview:self.squareFootageLabel];
    self.scrollView.contentSize = CGSizeMake(self.imageView.frame.size.width, self.imageView.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
