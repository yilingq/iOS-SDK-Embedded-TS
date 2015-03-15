//
//  ViewController.m
//  CardHandlerAppObjC
//
//  Created by Peter Qiu on 3/3/15.
//  Copyright (c) 2015 Peter Qiu. All rights reserved.
//

#import "ViewController.h"
@import CreditCardHandler;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [[IJCreditCardHandler alloc] initializeSDK:LEVLE_TRACE];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Swiped_Click:(id)sender {
    
    [[IJCreditCardHandler alloc] StartSwipedTransaction:1 amt:@"88.88" currency:@"USD" itemId:1002 seatNum:@"5D" fareClass:@"First Class" ffStatus:@"Premium"];
}
- (IBAction)NFC_Click:(id)sender {
       [[IJCreditCardHandler alloc] StartNFCTransaction:1 amt:@"88.88" currency:@"USD" itemId:1002 seatNum:@"5D" fareClass:@"First Class" ffStatus:@"Premium"];
}
- (IBAction)EMV_Click:(id)sender {
       [[IJCreditCardHandler alloc] StartEMVTransaction:1 amt:@"88.88" currency:@"USD" itemId:1002 seatNum:@"5D" fareClass:@"First Class" ffStatus:@"Premium"];
}

@end
