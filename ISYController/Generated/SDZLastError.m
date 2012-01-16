/*
	SDZLastError.h
	The implementation of properties and methods for the SDZLastError array.
	Generated by SudzC.com
*/
#import "SDZLastError.h"

#import "SDZDriverError.h"
@implementation SDZLastError

	+ (id) newWithNode: (CXMLNode*) node
	{
		return [[SDZLastError alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZDriverError* value = [[SDZDriverError newWithNode: child] object];
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
