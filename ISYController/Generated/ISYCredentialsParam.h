/*
	ISYCredentialsParam.h
	The interface definition of properties and methods for the ISYCredentialsParam object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface ISYCredentialsParam : SoapObject
{
	NSString* _name;
	NSString* _password;
	
}
		
	@property (retain, nonatomic) NSString* name;
	@property (retain, nonatomic) NSString* password;

	+ (ISYCredentialsParam*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
