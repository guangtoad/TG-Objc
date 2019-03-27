//
//  NSDictionary+TG.h
//  TGObj
//
//  Created by toad on 15/9/17.
//  Copyright (c) 2015年 toad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TG_Json)

- (NSString *) jsonStr;

@end

@interface NSDictionary (TG)

- (id) objectForKey:(id)aKey ClassModel:(Class)obj_class;

- (int) intForKey:(id)key defValue:(int)def;
- (int) intForKey:(id)key;

- (float) floatForKey:(id)key defValue:(float)def;
- (float) floatForKey:(id)key;

- (double) doubleForKey:(id)key defValue:(double)def;
- (double) doubleForKey:(id)key;

@end
