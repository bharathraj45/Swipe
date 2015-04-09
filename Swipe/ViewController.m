//
//  ViewController.m
//  Swipe
//
//  Created by Bharath Raj Venkatesh on 09/04/15.
//  Copyright (c) 2015 techolution. All rights reserved.
//
//
//
//
//9912559941

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UISwipeGestureRecognizer *swipeGestureRecognizerLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeGesture:)];
    swipeGestureRecognizerLeft.numberOfTouchesRequired = 1;
    swipeGestureRecognizerLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    swipeGestureRecognizerLeft.delegate = (id)self;
    [self.view addGestureRecognizer:swipeGestureRecognizerLeft];
    
    self.tabBarItem.badgeValue = [NSString stringWithFormat:@"4"];
    
//    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithTitle:@"Right" style:UIBarButtonItemStylePlain target:self action:@selector(btnMethodRightClik)];
//    self.navigationItem.rightBarButtonItem = rightBarButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)btnMethodRightClik{
//    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    //UIViewController *sbvc = [UIViewController alloc]
//    UIViewController *sbvc = [sb instantiateViewControllerWithIdentifier:@"second"];
//    //[self.navigationController pushViewController:sbvc animated:YES];
//    //[self presentViewController:sbvc animated:YES completion:nil];
//    [self.navigationController pushViewController:sbvc animated:YES];
    self.tabBarController.selectedIndex = 1;
}

-(void)handleSwipeGesture:(UIGestureRecognizer *) sender{
    NSUInteger touches = sender.numberOfTouches;
    if(touches == 1){
        if(sender.state == UIGestureRecognizerStateEnded){
            
            self.tabBarController.selectedIndex = 1;
            
//            UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//            //UIViewController *sbvc = [UIViewController alloc]
//            UIViewController *sbvc = [sb instantiateViewControllerWithIdentifier:@"second"];
//            //[self.navigationController pushViewController:sbvc animated:YES];
//            [self presentViewController:sbvc animated:YES completion:nil];
            //[self.navigationController pushViewController:sbvc animated:YES];
            //[self.navigationController popToViewController:sbvc animated:YES];
        }
    }
}
@end
