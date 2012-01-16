/*
	SDZUDNode.h
	The interface definition of properties and methods for the SDZUDNode object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZNodeParent;

@interface SDZUDNode : SoapObject
{
	NSString* _address;
	NSString* _name;
	SDZNodeParent* _parent;
	NSString* _ELK_ID;
	short _flag;
	
}
		
	@property (retain, nonatomic) NSString* address;
	@property (retain, nonatomic) NSString* name;
	@property (retain, nonatomic) SDZNodeParent* parent;
	@property (retain, nonatomic) NSString* ELK_ID;
	@property short flag;

	+ (SDZUDNode*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
