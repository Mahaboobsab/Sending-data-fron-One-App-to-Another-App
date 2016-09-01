//
//  ViewController.m
//  Sender
//
//  Created by Mahaboobsab Nadaf on 31/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
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

- (IBAction)openMaps:(id)sender {
    // Opens a map containing Envato's Headquarters
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"http://maps.google.com/maps?ll=-37.812022,144.969277";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

- (IBAction)openYoutube:(id)sender {
    
    // Opens a video of an iPad 2 Commercial
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"http://www.youtube.com/watch?v=TFFkK2SmPg4";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
    
    
}

- (IBAction)openReceiverApp:(id)sender {
    
    // Opens the Receiver app if installed, otherwise displays an error
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *URLEncodedText = [self.textBox.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *ourPath = [@"readtext://" stringByAppendingString:URLEncodedText];
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    if ([ourApplication canOpenURL:ourURL]) {
        [ourApplication openURL:ourURL];
    }
    else {
        //Display error
        
        
       // Configuring and presenting an alert
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Receiver Not Found"
                                                                       message:@"TThe Receiver App is not installed. It must be installed to send text."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
}
@end
