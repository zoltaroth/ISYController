/*
	SDZFeature.h
	The implementation of properties and methods for the SDZFeature object.
	Generated by SudzC.com
*/
#import "SDZFeature.h"

@implementation SDZFeature
	@synthesize _id = __id;
	@synthesize desc = _desc;
	@synthesize isInstalled = _isInstalled;
	@synthesize isAvailable = _isAvailable;

	- (id) init
	{
		if(self = [super init])
		{
			self.desc = nil;

		}
		return self;
	}

	+ (SDZFeature*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZFeature*)[[SDZFeature alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self._id = [[Soap getNodeValue: node withName: @"id"] intValue];
			self.desc = [Soap getNodeValue: node withName: @"desc"];
			self.isInstalled = [[Soap getNodeValue: node withName: @"isInstalled"] boolValue];
			self.isAvailable = [[Soap getNodeValue: node withName: @"isAvailable"] boolValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Feature"];
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
		[s appendFormat: @"<id>%@</id>", [NSString stringWithFormat: @"%i", self._id]];
		if (self.desc != nil) [s appendFormat: @"<desc>%@</desc>", [[self.desc stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<isInstalled>%@</isInstalled>", (self.isInstalled)?@"true":@"false"];
		[s appendFormat: @"<isAvailable>%@</isAvailable>", (self.isAvailable)?@"true":@"false"];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZFeature class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
