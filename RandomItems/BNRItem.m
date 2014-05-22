//
//  BNRItem.m
//  RandomItems
//
//  Created by Sandquist, Cassandra G on 5/22/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (void)setItemName:(NSString*)str
{
    _itemName = str;
}
- (NSString*)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString*)str
{
    _serialNumber = str;
}
- (NSString*)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate*)dateCreated
{
    return _dateCreated;
}

- (NSString*)description
{
    NSString* descriptionString =
        [[NSString alloc] initWithFormat:@"%@ (%@): Worth: $%d, recorded on %@",
                                         self.itemName,
                                         self.serialNumber,
                                         self.valueInDollars,
                                         self.dateCreated];
    return descriptionString;
}
@end
