//
//  main.m
//  RandomItems
//
//  Created by Sandquist, Cassandra G on 5/22/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char* argv[])
{

    @autoreleasepool
    {
        // insert code here...
        NSMutableArray* items = [[NSMutableArray alloc] init];

        BNRItem* backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];

        BNRItem* calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];

        backpack.containedItem = calculator;
        backpack = nil;
        calculator = nil;

        for (BNRItem* item in items) {
            NSLog(@"%@", item);
        }
        NSLog(@"Setting items to nil . . .");
        items = nil;
    }
    return 0;
}
