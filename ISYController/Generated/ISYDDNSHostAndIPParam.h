/*
	ISYDDNSHostAndIPParam.h
	The interface definition of properties and methods for the ISYDDNSHostAndIPParam object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface ISYDDNSHostAndIPParam : SoapObject
{
	NSString* _host;
	NSString* _ip;
	
}
		
	@property (retain, nonatomic) NSString* host;
	@property (retain, nonatomic) NSString* ip;

	+ (ISYDDNSHostAndIPParam*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
