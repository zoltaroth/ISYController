/*
	SDZRestoreDeviceParam.h
	The implementation of properties and methods for the SDZRestoreDeviceParam object.
	Generated by SudzC.com
*/
#import "SDZRestoreDeviceParam.h"

@implementation SDZRestoreDeviceParam
	@synthesize node = _node;
	@synthesize flag = _flag;

	- (id) init
	{
		if(self = [super init])
		{
			self.node = nil;

		}
		return self;
	}

	+ (SDZRestoreDeviceParam*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZRestoreDeviceParam*)[[SDZRestoreDeviceParam alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.node = [Soap getNodeValue: node withName: @"node"];
			self.flag = [[NSNumber numberWithInt: [[Soap getNodeValue: node withName: @"flag"] intValue]] charValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"RestoreDeviceParam"];
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
		[s appendFormat: @"<flag>%@</flag>", [NSString stringWithFormat: @"%c", self.flag]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZRestoreDeviceParam class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end