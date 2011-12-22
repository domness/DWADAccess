# DWADAccess.h/.m

This class is useful for saving and loading NSArray/NSDictionary's to the iOS filesystem that may not work otherwise due to the different types within the NSArray or NSDictionary.

## Example

Must import the class:

    #import "DWADAccess.h"

Loading:

    activity = [[NSArray alloc] initWithArray:[DWADAccess loadArrayForKey:@"activity"]];
    images = [[NSMutableDictionary alloc] initWithDictionary:[DWADAccess loadDictionaryForKey:@"images"]];

Saving:

    [DWADAccess saveArray:activity withKey:@"activity"];
    [DWADAccess saveDictionary:images withKey:@"images"];
