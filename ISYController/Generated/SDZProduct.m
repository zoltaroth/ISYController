/*
	SDZProduct.h
	The implementation of properties and methods for the SDZProduct object.
	Generated by SudzC.com
*/
#import "SDZProduct.h"

@implementation SDZProduct
	@synthesize _id = __id;
	@synthesize desc = _desc;

	- (id) init
	{
		if(self = [super init])
		{
			self._id = nil;
			self.desc = nil;

		}
		return self;
	}

	+ (SDZProduct*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZProduct*)[[SDZProduct alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self._id = [Soap getNodeValue: node withName: @"id"];
			self.desc = [Soap getNodeValue: node withName: @"desc"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Product"];
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
		if (self._id != nil) [s appendFormat: @"<id>%@</id>", [[self._id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.desc != nil) [s appendFormat: @"<desc>%@</desc>", [[self.desc stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZProduct class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
