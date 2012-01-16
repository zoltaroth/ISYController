/*
	ISYconfiguration.h
	The interface definition of properties and methods for the ISYconfiguration object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class ISYDeviceSpecifications;
@class ISYUPnPSpecifications;
@class ISYControls;
@class ISYDeviceRoot;
@class ISYProduct;
@class ISYFeatures;

@interface ISYconfiguration : SoapObject
{
	ISYDeviceSpecifications* _deviceSpecs;
	ISYUPnPSpecifications* _upnpSpecs;
	NSMutableArray* _controls;
	NSString* _app;
	NSString* _app_version;
	NSString* _platform;
	NSString* _build_timestamp;
	ISYDeviceRoot* _root;
	ISYProduct* _product;
	NSMutableArray* _features;
	BOOL _triggers;
	id _security;
	BOOL _isDefaultCert;
	NSString* _internetAccessURL;
	
}
		
	@property (retain, nonatomic) ISYDeviceSpecifications* deviceSpecs;
	@property (retain, nonatomic) ISYUPnPSpecifications* upnpSpecs;
	@property (retain, nonatomic) NSMutableArray* controls;
	@property (retain, nonatomic) NSString* app;
	@property (retain, nonatomic) NSString* app_version;
	@property (retain, nonatomic) NSString* platform;
	@property (retain, nonatomic) NSString* build_timestamp;
	@property (retain, nonatomic) ISYDeviceRoot* root;
	@property (retain, nonatomic) ISYProduct* product;
	@property (retain, nonatomic) NSMutableArray* features;
	@property BOOL triggers;
	@property (retain, nonatomic) id security;
	@property BOOL isDefaultCert;
	@property (retain, nonatomic) NSString* internetAccessURL;

	+ (ISYconfiguration*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
