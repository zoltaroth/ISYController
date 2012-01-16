/*
	ISYUDNode.h
	The implementation of properties and methods for the ISYUDNode object.
	Generated by SudzC.com
*/
#import "ISYUDNode.h"

#import "ISYNodeParent.h"
@implementation ISYUDNode
	@synthesize address = _address;
	@synthesize name = _name;
	@synthesize parent = _parent;
	@synthesize ELK_ID = _ELK_ID;
	@synthesize flag = _flag;

	- (id) init
	{
		if(self = [super init])
		{
			self.address = nil;
			self.name = nil;
			self.parent = nil; // [[ISYNodeParent alloc] init];
			self.ELK_ID = nil;

		}
		return self;
	}

	+ (ISYUDNode*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (ISYUDNode*)[[ISYUDNode alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.address = [Soap getNodeValue: node withName: @"address"];
			self.name = [Soap getNodeValue: node withName: @"name"];
			//self.parent = [[ISYNodeParent newWithNode: [Soap getNode: node withName: @"parent"]] object];
			self.ELK_ID = [Soap getNodeValue: node withName: @"ELK_ID"];
			self.flag = (short)[[Soap getNodeValue: node withName: @"flag"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"UDNode"];
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
		if (self.address != nil) [s appendFormat: @"<address>%@</address>", [[self.address stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.name != nil) [s appendFormat: @"<name>%@</name>", [[self.name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.parent != nil) [s appendString: [self.parent serialize: @"parent"]];
		if (self.ELK_ID != nil) [s appendFormat: @"<ELK_ID>%@</ELK_ID>", [[self.ELK_ID stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];
		[s appendFormat: @" flag=\"%@\"", [NSString stringWithFormat: @"%i", self.flag]];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[ISYUDNode class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end