//
//  DWADAccess.h
//
//  Created by Dominic Wroblewski on 16/12/2011.
//  Copyright (c) 2011 Terracoding LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DWADAccess : NSObject

+ (void)saveArray:(NSArray *)array withKey:(NSString *)key;
+ (NSArray *)loadArrayForKey:(NSString *)key;
+ (void)saveDictionary:(NSDictionary *)dictionary withKey:(NSString *)key;
+ (NSDictionary *)loadDictionaryForKey:(NSString *)key;
+ (void)deleteObjectForKey:(NSString *)key;

@end
