/*
	SDZInternetAccessParam.h
	The implementation of properties and methods for the SDZInternetAccessParam object.
	Generated by SudzC.com
*/
#import "SDZInternetAccessParam.h"

@implementation SDZInternetAccessParam
	@synthesize flag = _flag;

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZInternetAccessParam*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZInternetAccessParam*)[[SDZInternetAccessParam alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.flag = [[NSNumber numberWithInt: [[Soap getNodeValue: node withName: @"flag"] intValue]] charValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"InternetAccessParam"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		[s appendFormat: @"<flag>%@</flag>", [NSString stringWithFormat: @"%c", self.flag]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZInternetAccessParam class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
