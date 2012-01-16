/*
	SDZInternetAccessParam.h
	The interface definition of properties and methods for the SDZInternetAccessParam object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZInternetAccessParam : SoapObject
{
	char _flag;
	
}
		
	@property char flag;

	+ (SDZInternetAccessParam*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
