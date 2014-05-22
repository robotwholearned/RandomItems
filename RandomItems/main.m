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

        BNRItem* item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                           valueInDollars:100
                                             serialNmuber:@"A1B2C"];
        BNRItem* itemWithName = [[BNRItem alloc] initWithItemName:@"NameNameName"];
        BNRItem* itemNoName = [[BNRItem alloc] init];

        NSLog(@"%@", item);
        NSLog(@"%@", itemWithName);
        NSLog(@"%@", itemNoName);

        items = nil;
    }
    return 0;
}
