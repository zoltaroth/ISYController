/*
	ISYLastError.h
	The implementation of properties and methods for the ISYLastError array.
	Generated by SudzC.com
*/
#import "ISYLastError.h"

#import "ISYDriverError.h"
@implementation ISYLastError

	+ (id) newWithNode: (CXMLNode*) node
	{
		return [[ISYLastError alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				ISYDriverError* value = [[ISYDriverError newWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"DriverError"]];
		}
		return s;
	}
@end
