//
//  ViewController.m
//  ActivityIndicator
//
//  Created by Klacsó Péter on 2014.04.15..
//  Copyright (c) 2014 Klacsó Péter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self activ];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)activ{
    
    [UIView animateWithDuration:0.3 animations:^{
        _ActivitiView.alpha = 1.0;
        [_ActivitiView setBackgroundColor:[UIColor grayColor]];
        _ActivitiView.layer.cornerRadius = 5.0;
        _textLabel.text =@"indicator";
    } completion:^(BOOL finished) {
        [_indicator startAnimating];
        
        [self performSelector:@selector(inactiv) withObject:nil afterDelay:2.5];
    }];
    
    
}
-(void)inactiv{
    [UIView animateWithDuration:0.3 animations:^{
        _ActivitiView.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        [_indicator stopAnimating];
    }];
    
}






@end
