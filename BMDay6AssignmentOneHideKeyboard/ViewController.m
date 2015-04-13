//
//  ViewController.m
//  BMDay6AssignmentOneHideKeyboard
//
//  Created by Kunwardeep Gill on 2015-04-13.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(IBAction)textFieldReturn:(id)sender{
  
  [sender resignFirstResponder];
}

//make the keyboard disappear when you press the background
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
  
  UITouch *touch = [[event allTouches]anyObject];
  if([self.hideKeyboardTextField isFirstResponder] && [touch view] != self.hideKeyboardTextField){
    [self.hideKeyboardTextField resignFirstResponder];
  }
  [super touchesBegan:touches withEvent:event];
}

@end
