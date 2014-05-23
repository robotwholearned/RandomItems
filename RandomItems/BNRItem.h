//
//  BNRItem.h
//  RandomItems
//
//  Created by Sandquist, Cassandra G on 5/22/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject {
    NSString* _itemName;
    NSString* _serialNumber;
    int _valueInDollars;
    NSDate* _dateCreated;
}

- (void)setItemName:(NSString*)str;
- (NSString*)itemName;

- (void)setSerialNumber:(NSString*)str;
- (NSString*)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate*)dateCreated;

//desiganted initializer
- (instancetype)initWithItemName:(NSString*)name
                  valueInDollars:(int)value
                    serialNmuber:(NSString*)serial;

- (instancetype)initWithItemName:(NSString*)name;

- (instancetype)initWithItemName:(NSString*)name
                    serialNumber:(NSString*)serial;

+ (instancetype)randomItem;

@end
