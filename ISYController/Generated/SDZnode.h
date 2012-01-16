/*
	SDZnode.h
	The interface definition of properties and methods for the SDZnode object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZUDNode.h"
@class SDZUDNode;


@interface SDZnode : SDZUDNode
{
	NSString* _type;
	BOOL _enabled;
	
}
		
	@property (retain, nonatomic) NSString* type;
	@property BOOL enabled;

	+ (SDZnode*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
