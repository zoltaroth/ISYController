/*
	ISYSMTPConfiguration.h
	The implementation of properties and methods for the ISYSMTPConfiguration object.
	Generated by SudzC.com
*/
#import "ISYSMTPConfiguration.h"

@implementation ISYSMTPConfiguration
	@synthesize UseDefaultSMTP = _UseDefaultSMTP;
	@synthesize SMTPServer = _SMTPServer;
	@synthesize SMTPPort = _SMTPPort;
	@synthesize SMTPUID = _SMTPUID;
	@synthesize SMTPPWD = _SMTPPWD;
	@synthesize SMTPFrom = _SMTPFrom;
	@synthesize SMTPTimeout = _SMTPTimeout;
	@synthesize UseTLS = _UseTLS;

	- (id) init
	{
		if(self = [super init])
		{
			self.SMTPServer = nil;
			self.SMTPUID = nil;
			self.SMTPPWD = nil;
			self.SMTPFrom = nil;

		}
		return self;
	}

	+ (ISYSMTPConfiguration*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (ISYSMTPConfiguration*)[[ISYSMTPConfiguration alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.UseDefaultSMTP = [[Soap getNodeValue: node withName: @"UseDefaultSMTP"] boolValue];
			self.SMTPServer = [Soap getNodeValue: node withName: @"SMTPServer"];
			self.SMTPPort = [[Soap getNodeValue: node withName: @"SMTPPort"] intValue];
			self.SMTPUID = [Soap getNodeValue: node withName: @"SMTPUID"];
			self.SMTPPWD = [Soap getNodeValue: node withName: @"SMTPPWD"];
			self.SMTPFrom = [Soap getNodeValue: node withName: @"SMTPFrom"];
			self.SMTPTimeout = [[Soap getNodeValue: node withName: @"SMTPTimeout"] intValue];
			self.UseTLS = [[Soap getNodeValue: node withName: @"UseTLS"] boolValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SMTPConfiguration"];
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
		[s appendFormat: @"<UseDefaultSMTP>%@</UseDefaultSMTP>", (self.UseDefaultSMTP)?@"true":@"false"];
		if (self.SMTPServer != nil) [s appendFormat: @"<SMTPServer>%@</SMTPServer>", [[self.SMTPServer stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<SMTPPort>%@</SMTPPort>", [NSString stringWithFormat: @"%i", self.SMTPPort]];
		if (self.SMTPUID != nil) [s appendFormat: @"<SMTPUID>%@</SMTPUID>", [[self.SMTPUID stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.SMTPPWD != nil) [s appendFormat: @"<SMTPPWD>%@</SMTPPWD>", [[self.SMTPPWD stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.SMTPFrom != nil) [s appendFormat: @"<SMTPFrom>%@</SMTPFrom>", [[self.SMTPFrom stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<SMTPTimeout>%@</SMTPTimeout>", [NSString stringWithFormat: @"%i", self.SMTPTimeout]];
		[s appendFormat: @"<UseTLS>%@</UseTLS>", (self.UseTLS)?@"true":@"false"];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[ISYSMTPConfiguration class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
