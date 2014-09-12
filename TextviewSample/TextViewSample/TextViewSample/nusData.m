//
//  nusData.m
//  TextViewSample
//
//  Created by Prasanna V on 09/09/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import "nusData.h"

@implementation nusData

- (void) createAnArray{
    self.myMutableArray = [[NSMutableArray alloc]initWithObjects:@"hello", nil];
}

- (void) insertAaValueIntoArray: (NSString *)valueToInsert
{
    [self.myMutableArray insertObject:valueToInsert atIndex:0];
}

- (void) removeAnObjectFromTheArray: (NSUInteger)indexToRemove{
    [self.myMutableArray removeObjectAtIndex:indexToRemove];
}

- (NSMutableString*) returnAllValues
{
    NSMutableString *myString = [[NSMutableString alloc]init];
    for (int i = 0; i < [self.myMutableArray count]; i++)
    {
        [myString appendString:[self.myMutableArray objectAtIndex:i]];
        [myString appendString:@"\n"];
    }
 return myString;
}

@end
