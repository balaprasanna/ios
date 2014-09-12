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
@property (strong,nonatomic) IBOutlet nusData *objectName;
@property (weak, nonatomic) IBOutlet UITextField *TextField;
@property (strong, nonatomic) IBOutlet UIView *myView;
@end

@implementation nusViewController

-(void) serviceMethod{
    
}


- (IBAction)btnAdd:(UIButton *)sender {
    
    
    if(!self.objectName){
        self.objectName =[[nusData alloc]init];
        [self.objectName createAnArray];
            if([[self.TextField text] length])
            {
                 [self.objectName insertAaValueIntoArray:[self.TextField text]];
            }
            else{
                
            }

       // [self.objectName insertAaValueIntoArray:@"Abc"];
    }
    else{
    
        if([[self.TextField text] length])
        {
            [self.objectName insertAaValueIntoArray:[self.TextField text]];
        }
        else{
            
        }
        //[self.objectName insertAaValueIntoArray:@"Abc"];
       
    }
        // update the UI
        [self.textview setText:[self.objectName returnAllValues]];
  
        // this is the way to call a + type of methods.
        // since blackcolor() is a method that is gonnna create some and give it to us.
        // hence it is called in such a way , not using (.) notations.
        //rather using Class name (space) method name
        [self.textview setTextColor:[UIColor whiteColor]];
    
 // clear the TextField
    [self.TextField setText:@""];
    
 // hide the Keyboard also
    [self.TextField resignFirstResponder];
}
- (IBAction)btnRemove:(UIButton *)sender {
    if(self.objectName){
        if([self.objectName.myMutableArray count]){
        [self.objectName removeAnObjectFromTheArray:0];
        [self.textview setText:[self.objectName returnAllValues]];
            [self.textview setTextColor:[UIColor whiteColor]];
        }
    }
}
- (IBAction)doneEditing:(UIButton *)sender {
    
    [self.myView touchesBegan:(NSSet *) withEvent:<#(UIEvent *)#>]
    [self.TextField resignFirstResponder];
    
    
    // code to hide the keyboard after done with editing
   // [self.textview resignFirstResponder];
    
  
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
  /*  NSMutableArray *mymutablearray = [NSMutableArray arrayWithObjects:
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
    [self.textview setTextColor:[UIColor whiteColor]];
   // NSLog(@"loaded %@",temp);
   
   */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
