//
//  DWADAccess.m
//
//  Created by Dominic Wroblewski on 16/12/2011.
//  Copyright (c) 2011 Terracoding LTD. All rights reserved.
//

#import "DWADAccess.h"

@implementation DWADAccess

+ (void)saveArray:(NSArray *)array withKey:(NSString *)key
{
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * arrayFileName = [documentsDirectory stringByAppendingPathComponent:key];
    [NSKeyedArchiver archiveRootObject:array toFile:arrayFileName];
}

+ (NSArray *)loadArrayForKey:(NSString *)key
{
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * filePath = [documentsDirectory stringByAppendingPathComponent:key];
    NSArray * array = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    if (array) {
        return array;
    } else {
        return nil;
    }
}

+ (void)saveDictionary:(NSDictionary *)dictionary withKey:(NSString *)key
{
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * arrayFileName = [documentsDirectory stringByAppendingPathComponent:key];
    [NSKeyedArchiver archiveRootObject:dictionary toFile:arrayFileName];
}

+ (NSDictionary *)loadDictionaryForKey:(NSString *)key
{
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * filePath = [documentsDirectory stringByAppendingPathComponent:key];
    NSDictionary * dictionary = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    if (dictionary) {
        return dictionary;
    } else {
        return nil;
    }
}

+ (void)deleteObjectForKey:(NSString *)key
{
    NSFileManager * fm = [NSFileManager defaultManager];
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * filePath = [documentsDirectory stringByAppendingPathComponent:key];
    [fm removeItemAtPath:filePath error:NULL];
}

+ (BOOL)fileExistsForKey:(NSString *)key
{
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * filePath = [documentsDirectory stringByAppendingPathComponent:key];
    return [[NSFileManager defaultManager] fileExistsAtPath:filePath];
}

@end
