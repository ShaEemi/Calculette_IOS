//
//  ViewController.m
//  FirstViewController
//
//  Created by Sharon Colin on 16/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import "ViewController.h"
#import "ResultViewController.h"

@interface ViewController ()
@property IBOutlet UITextField *value2;
@property IBOutlet UITextField *value1;
@property (weak, nonatomic) IBOutlet UIButton *egl;
@property (weak, nonatomic) IBOutlet UIButton *mult;
@property (weak, nonatomic) IBOutlet UIButton *div;
@property (weak, nonatomic) IBOutlet UIButton *supp;
@property (weak, nonatomic) IBOutlet UIButton *add;

@end

@implementation ViewController

- (IBAction)value2:(id)sender {
   
}
- (IBAction)value1:(id)sender {
   
}
- (IBAction)mult:(id)sender {
    self.operateur = '*';
}
- (IBAction)div:(id)sender {
    self.operateur = '/';
}
- (IBAction)supp:(id)sender {
    self.operateur = '-';
}
- (IBAction)add:(id)sender {
    self.operateur = '+' ;

}
- (IBAction)egl:(id)sender {
     float a = self.value1.text.floatValue;
     float b = self.value2.text.floatValue;
    float r = 0;
    switch (self.operateur) {
        case '+':
            r = (a + b);
            break;
        case '-':
            r = (a - b);
            break;
        case '/':
            r = (a / b);
            break;
        case '*':
            r = (a * b);
            break;
            
        default:
            break;
    }
    
    ResultViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultIdController"];
    
    vc.monResultat = r;
    
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.value1 resignFirstResponder];
    [self.value2 resignFirstResponder];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
