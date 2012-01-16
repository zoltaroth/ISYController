/*
	SDZDriverError.h
	The implementation of properties and methods for the SDZDriverError object.
	Generated by SudzC.com
*/
#import "SDZDriverError.h"

@implementation SDZDriverError
	@synthesize code = _code;
	@synthesize param1 = _param1;
	@synthesize param2 = _param2;

	- (id) init
	{
		if(self = [super init])
		{
			self.param1 = nil;
			self.param2 = nil;

		}
		return self;
	}

	+ (SDZDriverError*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZDriverError*)[[SDZDriverError alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.code = [[Soap getNodeValue: node withName: @"code"] intValue];
			self.param1 = [Soap getNodeValue: node withName: @"param1"];
			self.param2 = [Soap getNodeValue: node withName: @"param2"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"DriverError"];
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
		[s appendFormat: @"<code>%@</code>", [NSString stringWithFormat: @"%i", self.code]];
		if (self.param1 != nil) [s appendFormat: @"<param1>%@</param1>", [[self.param1 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.param2 != nil) [s appendFormat: @"<param2>%@</param2>", [[self.param2 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZDriverError class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
