/*
	ISYDiscoverNodesParam.h
	The interface definition of properties and methods for the ISYDiscoverNodesParam object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface ISYDiscoverNodesParam : SoapObject
{
	NSString* _type;
	
}
		
	@property (retain, nonatomic) NSString* type;

	+ (ISYDiscoverNodesParam*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end