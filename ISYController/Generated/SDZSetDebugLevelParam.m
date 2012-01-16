/*
	SDZSetDebugLevelParam.h
	The implementation of properties and methods for the SDZSetDebugLevelParam object.
	Generated by SudzC.com
*/
#import "SDZSetDebugLevelParam.h"

@implementation SDZSetDebugLevelParam
	@synthesize option = _option;

	- (id) init
	{
		if(self = [super init])
		{
			self.option = nil;

		}
		return self;
	}

	+ (SDZSetDebugLevelParam*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZSetDebugLevelParam*)[[SDZSetDebugLevelParam alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.option = [Soap getNodeValue: node withName: @"option"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SetDebugLevelParam"];
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
		if (self.option != nil) [s appendFormat: @"<option>%@</option>", [[self.option stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZSetDebugLevelParam class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end