/*
	ISYgroup.h
	The implementation of properties and methods for the ISYgroup object.
	Generated by SudzC.com
*/
#import "ISYgroup.h"

#import "ISYUDLink.h"
@implementation ISYgroup
	@synthesize deviceGroup = _deviceGroup;
	@synthesize link = _link;

	- (id) init
	{
		if(self = [super init])
		{
			self.deviceGroup = nil;
			self.link = nil; // [[ISYUDLink alloc] init];

		}
		return self;
	}

	+ (ISYgroup*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (ISYgroup*)[[ISYgroup alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.deviceGroup = [Soap getNodeValue: node withName: @"deviceGroup"];
			//self.link = [[ISYUDLink newWithNode: [Soap getNode: node withName: @"link"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"group"];
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
		if (self.deviceGroup != nil) [s appendFormat: @"<deviceGroup>%@</deviceGroup>", [[self.deviceGroup stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.link != nil) [s appendString: [self.link serialize: @"link"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[ISYgroup class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
