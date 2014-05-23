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
        NSLog(@"%@", items[10]);
        /*
         *** Terminating app due to uncaught exception 'NSRangeException', reason: '*** -[__NSArrayM objectAtIndex:]: index 10 beyond bounds [0 .. 9]'
         *** First throw call stack:
         (
         0   CoreFoundation                      0x00007fff8ea7a25c __exceptionPreprocess + 172
         1   libobjc.A.dylib                     0x00007fff8c0cce75 objc_exception_throw + 43
         2   CoreFoundation                      0x00007fff8e958735 -[__NSArrayM objectAtIndex:] + 245
         3   RandomItems                         0x00000001000010a6 main + 694
         4   libdyld.dylib                       0x00007fff904075fd start + 1
         )

         */
        items = nil;
    }
    return 0;
}
