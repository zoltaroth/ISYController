/*
	ISYSystemStatus.h
	The interface definition of properties and methods for the ISYSystemStatus object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface ISYSystemStatus : SoapObject
{
	char _Stat;
	long _NumRemainingOps;
	long _DelayBetweenOps;
	BOOL _InSafeMode;
	
}
		
	@property char Stat;
	@property long NumRemainingOps;
	@property long DelayBetweenOps;
	@property BOOL InSafeMode;

	+ (ISYSystemStatus*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
