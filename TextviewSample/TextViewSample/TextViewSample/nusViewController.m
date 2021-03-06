//
//  nusViewController.m
//  TextViewSample
//
//  Created by Prasanna V on 09/09/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import "nusViewController.h"
#import "nusData.h"

@interface nusViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textview;

@end

@implementation nusViewController
- (IBAction)btnAdd:(UIButton *)sender {
    
    
    nusData *objectName= [[nusData alloc]init];
    [objectName createAnArray];
    [objectName insertAaValueIntoArray:@"Inserted"];
    
    // return the updated values and update the UI
    [self.textview setText:[objectName returnAllValues]];
}
- (IBAction)btnRemove:(UIButton *)sender {
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    NSMutableArray *mymutablearray = [NSMutableArray arrayWithObjects:
                                  @"Audi A6",
                                  @"BMW Z3",
                                  @"Audi Quattro",
                                  @"Audi TT",
                                  nil];
    
    [mymutablearray insertObject:@"Prasanna Car1" atIndex:0];
    [mymutablearray insertObject:@"Prasanna Car2" atIndex:0];
    [mymutablearray insertObject:@"Prasanna Car3" atIndex:0];
    

    
   NSMutableString *temp = [NSMutableString stringWithString:@""];
    for (int i = 0; i < [mymutablearray count]; i++)
    {
        
       // NSLog([mymutablearray objectAtIndex:i]);
        
        [temp appendString:[mymutablearray objectAtIndex:i]];
        [temp appendString:@" \n"];
        //temp = [temp appendString:[mymutablearray objectAtIndex:i]];
      //  string1 stringByAppendingString:string2
    }
   
    [self.label setText:temp];
    [self.textview setText:temp];
    NSLog(@"loaded %@",temp);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
