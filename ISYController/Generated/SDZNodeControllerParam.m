/*
	SDZNodeControllerParam.h
	The implementation of properties and methods for the SDZNodeControllerParam object.
	Generated by SudzC.com
*/
#import "SDZNodeControllerParam.h"

@implementation SDZNodeControllerParam
	@synthesize node = _node;
	@synthesize controller = _controller;

	- (id) init
	{
		if(self = [super init])
		{
			self.node = nil;
			self.controller = nil;

		}
		return self;
	}

	+ (SDZNodeControllerParam*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZNodeControllerParam*)[[SDZNodeControllerParam alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.node = [Soap getNodeValue: node withName: @"node"];
			self.controller = [Soap getNodeValue: node withName: @"controller"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"NodeControllerParam"];
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
		if (self.controller != nil) [s appendFormat: @"<controller>%@</controller>", [[self.controller stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZNodeControllerParam class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end