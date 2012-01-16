/*
	ISYSetVariableParam.h
	The implementation of properties and methods for the ISYSetVariableParam object.
	Generated by SudzC.com
*/
#import "ISYSetVariableParam.h"

@implementation ISYSetVariableParam
	@synthesize type = _type;
	@synthesize _id = __id;
	@synthesize val = _val;

	- (id) init
	{
		if(self = [super init])
		{
			self._id = nil;
			self.val = nil;

		}
		return self;
	}

	+ (ISYSetVariableParam*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (ISYSetVariableParam*)[[ISYSetVariableParam alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.type = [[Soap getNodeValue: node withName: @"type"] intValue];
			self._id = [Soap getNodeValue: node withName: @"id"];
			self.val = [Soap getNodeValue: node withName: @"val"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SetVariableParam"];
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
		[s appendFormat: @"<type>%@</type>", [NSString stringWithFormat: @"%i", self.type]];
		if (self._id != nil) [s appendFormat: @"<id>%@</id>", [[self._id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.val != nil) [s appendFormat: @"<val>%@</val>", [[self.val stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[ISYSetVariableParam class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
