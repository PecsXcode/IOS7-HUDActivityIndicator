//
//  ViewController.h
//  ActivityIndicator
//
//  Created by Klacsó Péter on 2014.04.15..
//  Copyright (c) 2014 Klacsó Péter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *ActivitiView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@end
