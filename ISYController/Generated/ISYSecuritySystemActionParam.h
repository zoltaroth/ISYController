/*
	ISYSecuritySystemActionParam.h
	The interface definition of properties and methods for the ISYSecuritySystemActionParam object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface ISYSecuritySystemActionParam : SoapObject
{
	NSString* _SecAction;
	NSString* _code;
	
}
		
	@property (retain, nonatomic) NSString* SecAction;
	@property (retain, nonatomic) NSString* code;

	+ (ISYSecuritySystemActionParam*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
