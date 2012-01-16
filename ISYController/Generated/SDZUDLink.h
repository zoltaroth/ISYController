/*
	SDZUDLink.h
	The interface definition of properties and methods for the SDZUDLink object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZstring.h"
@class SDZstring;


@interface SDZUDLink : SDZstring
{
	short _type;
	
}
		
	@property short type;

	+ (SDZUDLink*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
