/*
	SDZNodeHierarchyParam.h
	The interface definition of properties and methods for the SDZNodeHierarchyParam object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZNodeHierarchyParam : SoapObject
{
	NSString* _node;
	char _nodeType;
	NSString* _parent;
	char _parentType;
	
}
		
	@property (retain, nonatomic) NSString* node;
	@property char nodeType;
	@property (retain, nonatomic) NSString* parent;
	@property char parentType;

	+ (SDZNodeHierarchyParam*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
