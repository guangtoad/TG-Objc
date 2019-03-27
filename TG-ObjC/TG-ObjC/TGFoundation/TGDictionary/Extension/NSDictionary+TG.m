//
//  NSDictionary+TG.m
//  TGObj
//
//  Created by toad on 15/9/17.
//  Copyright (c) 2015年 toad. All rights reserved.
//

#import "NSDictionary+TG.h"


#define TG_NULL_VALUE_BOOL false
#define TG_NULL_VALUE_INT   -1
#define TG_NULL_VALUE_STR   @""
#define TG_NULL_VALUE_DOULE 0

@implementation NSDictionary (TG_Json)

- (NSString *) jsonStr{
    return @"";
}

@end

@implementation NSDictionary (TG)

- (id) objectForKey:(id)aKey ClassModel:(Class)obj_class{
    id obj = [self objectForKey:aKey];
    if (obj != nil &&  [[obj class] isSubclassOfClass:obj_class]) {
        return obj;
    }
    return NULL;
}

- (int) intForKey:(id)key defValue:(int)def{
    id object = [self objectForKey:key];
    if ([object respondsToSelector:@selector(intValue)]) {
        return [object intValue];
    }
    return def;
}
- (int) intForKey:(id)key{
    return [self intForKey:key defValue:TG_NULL_VALUE_DOULE];
}

- (float) floatForKey:(id)key defValue:(float)def{
    id object = [self objectForKey:key];
    if ([object respondsToSelector:@selector(floatValue)]) {
        return [object intValue];
    }
    return def;
}
- (float) floatForKey:(id)key{
    return [self floatForKey:key defValue:0];
}

- (double) doubleForKey:(id)key defValue:(double)def{
    id object = [self objectForKey:key];
    if ([object respondsToSelector:@selector(doubleValue)]) {
        return [object intValue];
    }
    return def;
}
- (double) doubleForKey:(id)key{
    return [self doubleForKey:key defValue:0];
}

@end
