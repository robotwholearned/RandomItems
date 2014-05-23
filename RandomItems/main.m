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

        for (int i = 0; i < 10; i++) {
            BNRItem* item = [BNRItem randomItem];
            [items addObject:item];
        }
        for (BNRItem* item in items) {
            NSLog(@"%@", item);
        }
        items = nil;
    }
    return 0;
}
