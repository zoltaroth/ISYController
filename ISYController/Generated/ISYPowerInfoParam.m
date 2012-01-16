/*
	ISYPowerInfoParam.h
	The implementation of properties and methods for the ISYPowerInfoParam object.
	Generated by SudzC.com
*/
#import "ISYPowerInfoParam.h"

@implementation ISYPowerInfoParam
	@synthesize node = _node;
	//@synthesize deviceClass = _deviceClass;
	@synthesize wattage = _wattage;
	@synthesize dcPeriod = _dcPeriod;

	- (id) init
	{
		if(self = [super init])
		{
			self.node = nil;
			self.wattage = nil; // [[ISYunsignedInt alloc] init];
			self.dcPeriod = nil; // [[ISYunsignedInt alloc] init];

		}
		return self;
	}

	+ (ISYPowerInfoParam*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (ISYPowerInfoParam*)[[ISYPowerInfoParam alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.node = [Soap getNodeValue: node withName: @"node"];
			//self.deviceClass = [Soap deserialize: [Soap getNode: node withName: @"deviceClass"]];
			//self.wattage = [[ISYunsignedInt newWithNode: [Soap getNode: node withName: @"wattage"]] object];
			//self.dcPeriod = [[ISYunsignedInt newWithNode: [Soap getNode: node withName: @"dcPeriod"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"PowerInfoParam"];
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
		if (self.node != nil) [s appendFormat: @"<node>%@</node>", [[self.node stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		//[s appendString: [Soap serialize: self.deviceClass]];
		//if (self.wattage != nil) [s appendString: [self.wattage serialize: @"wattage"]];
		//if (self.dcPeriod != nil) [s appendString: [self.dcPeriod serialize: @"dcPeriod"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[ISYPowerInfoParam class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
