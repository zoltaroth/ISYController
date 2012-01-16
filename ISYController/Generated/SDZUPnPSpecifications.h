/*
	SDZUPnPSpecifications.h
	The interface definition of properties and methods for the SDZUPnPSpecifications object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZUPnPInfo;
@class SDZUPnPInfo;

@interface SDZUPnPSpecifications : SoapObject
{
	SDZUPnPInfo* _upnpDevice;
	SDZUPnPInfo* _upnpService;
	
}
		
	@property (retain, nonatomic) SDZUPnPInfo* upnpDevice;
	@property (retain, nonatomic) SDZUPnPInfo* upnpService;

	+ (SDZUPnPSpecifications*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end