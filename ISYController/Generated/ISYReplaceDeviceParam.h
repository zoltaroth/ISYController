/*
	ISYReplaceDeviceParam.h
	The interface definition of properties and methods for the ISYReplaceDeviceParam object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface ISYReplaceDeviceParam : SoapObject
{
	NSString* _node;
	NSString* _NewNode;
	NSString* _firmware;
	
}
		
	@property (retain, nonatomic) NSString* node;
	@property (retain, nonatomic) NSString* NewNode;
	@property (retain, nonatomic) NSString* firmware;

	+ (ISYReplaceDeviceParam*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
