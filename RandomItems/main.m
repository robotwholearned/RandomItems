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

        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];

        [items insertObject:@"Zero"
                    atIndex:0];

        for (NSString* item in items) {
            NSLog(@"%@", item);
        }

        BNRItem* item = [[BNRItem alloc] init];

        item.itemName = @"Red Sofa";
        item.serialNumber = @"A1B2C";
        item.valueInDollars = 100;

        NSLog(@"%@", item);

        items = nil;
    }
    return 0;
}
