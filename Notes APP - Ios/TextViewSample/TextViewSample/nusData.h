//
//  nusData.h
//  TextViewSample
//
//  Created by Prasanna V on 09/09/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface nusData : NSObject
//@property (strong,nonatomic) IBOutlet NSString *myValue;
//@property (strong,nonatomic) IBOutlet NSMutableArray *myArray;
//@property (strong,nonatomic) IBOutlet NSMutableString *myMutString;

@property (strong, nonatomic) NSString *myString;
@property (strong, nonatomic) NSMutableString *myMutableString;
@property (strong, nonatomic) NSMutableArray *myMutableArray;

// method to create and initialize a nsmutable array.
- (void) createAnArray;

// method to insert an object into the array.
- (void) insertAaValueIntoArray: (NSString *)valueToInsert;

// remove an object from the array using the index
- (void) removeAnObjectFromTheArray: (NSUInteger)indexToRemove;

- (NSMutableString*) returnAllValues;

// reference codes
//- (int)addX:(int)x toY:(int)y;
@end
