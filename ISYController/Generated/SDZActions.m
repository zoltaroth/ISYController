/*
	SDZActions.h
	The implementation of properties and methods for the SDZActions array.
	Generated by SudzC.com
*/
#import "SDZActions.h"

#import "SDZAction.h"
@implementation SDZActions

	+ (id) newWithNode: (CXMLNode*) node
	{
		return [[SDZActions alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZAction* value = [[SDZAction newWithNode: child] object];
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
			[s appendString: [item serialize: @"Action"]];
		}
		return s;
	}
@end