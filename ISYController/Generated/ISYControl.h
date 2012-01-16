/*
	ISYControl.h
	The interface definition of properties and methods for the ISYControl object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class ISYActions;

@interface ISYControl : SoapObject
{
	NSString* _name;
	NSString* _label;
	NSString* _description;
	BOOL _readOnly;
	BOOL _isQueryAble;
	BOOL _isNumeric;
	NSString* _numericUnit;
	int _min;
	int _max;
	BOOL _isGlobal;
	BOOL _isGUI;
	NSMutableArray* _actions;
	
}
		
	@property (retain, nonatomic) NSString* name;
	@property (retain, nonatomic) NSString* label;
	@property (retain, nonatomic) NSString* description;
	@property BOOL readOnly;
	@property BOOL isQueryAble;
	@property BOOL isNumeric;
	@property (retain, nonatomic) NSString* numericUnit;
	@property int min;
	@property int max;
	@property BOOL isGlobal;
	@property BOOL isGUI;
	@property (retain, nonatomic) NSMutableArray* actions;

	+ (ISYControl*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
