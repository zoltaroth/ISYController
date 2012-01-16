/*
	SDZDeviceRoot.h
	The implementation of properties and methods for the SDZDeviceRoot object.
	Generated by SudzC.com
*/
#import "SDZDeviceRoot.h"

@implementation SDZDeviceRoot
	@synthesize _id = __id;
	@synthesize name = _name;

	- (id) init
	{
		if(self = [super init])
		{
			self._id = nil;
			self.name = nil;

		}
		return self;
	}

	+ (SDZDeviceRoot*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZDeviceRoot*)[[SDZDeviceRoot alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self._id = [Soap getNodeValue: node withName: @"id"];
			self.name = [Soap getNodeValue: node withName: @"name"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"DeviceRoot"];
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
		if (self.name != nil) [s appendFormat: @"<name>%@</name>", [[self.name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZDeviceRoot class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end