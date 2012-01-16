/*
	ISYServiceExample.m
	Provides example and test runs the service's proxy methods.
	Generated by SudzC.com
*/
#import "ISYServiceExample.h"
#import "ISYService.h"

@implementation ISYServiceExample

- (void)run {
	// Create the service
	ISYService* service = [ISYService service];
	service.logging = YES;
	service.username = @"nandor";
	service.password = @"xaqw2ggg";
	

	// Returns ISYSubscription*. 
				//reportURL: To reuse the socket, use REUSE_SOCKET as the value
				//duration: use infinite
			
	[service Subscribe:self action:@selector(SubscribeHandler:)];
}

	

// Handle the response from AddDDNSHost.
		
- (void) AddDDNSHostHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"AddDDNSHost returned the value: %@", result);
			
}
	

// Handle the response from AddFolder.
		
- (void) AddFolderHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"AddFolder returned the value: %@", result);
			
}
	

// Handle the response from AddGroup.
		
- (void) AddGroupHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"AddGroup returned the value: %@", result);
			
}
	

// Handle the response from AddNode.
		
- (void) AddNodeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"AddNode returned the value: %@", result);
			
}
	

// Handle the response from ClearLastError.
		
- (void) ClearLastErrorHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"ClearLastError returned the value: %@", result);
			
}
	

// Handle the response from GetCurrentSystemStatus.
		
- (void) GetCurrentSystemStatusHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"GetCurrentSystemStatus returned the value: %@", result);
			
}
	

// Handle the response from GetDDNSHost.
		
- (void) GetDDNSHostHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYDDNSHost* result
		ISYDDNSHost* result = (ISYDDNSHost*)value;
	NSLog(@"GetDDNSHost returned the value: %@", result);
			
}
	

// Handle the response from GetDebugLevel.
		
- (void) GetDebugLevelHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYDBG* result
		ISYDBG* result = (ISYDBG*)value;
	NSLog(@"GetDebugLevel returned the value: %@", result);
			
}
	

// Handle the response from GetISYConfig.
		
- (void) GetISYConfigHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYconfiguration* result
		ISYconfiguration* result = (ISYconfiguration*)value;
	NSLog(@"GetISYConfig returned the value: %@", result);
			
}
	

// Handle the response from GetLastError.
		
- (void) GetLastErrorHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetLastError returned the value: %@", result);
			
}
	

// Handle the response from GetNodesConfig.
		
- (void) GetNodesConfigHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYnodes* result
		ISYnodes* result = (ISYnodes*)value;
	NSLog(@"GetNodesConfig returned the value: %@", result);
			
}
	

// Handle the response from GetSceneProfiles.
		
- (void) GetSceneProfilesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetSceneProfiles returned the value: %@", result);
			
}
	

// Handle the response from GetSMTPConfig.
		
- (void) GetSMTPConfigHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYSMTPConfiguration* result
		ISYSMTPConfiguration* result = (ISYSMTPConfiguration*)value;
	NSLog(@"GetSMTPConfig returned the value: %@", result);
			
}
	

// Handle the response from GetStartupTime.
		
- (void) GetStartupTimeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDITimeResponse* result
		ISYUDITimeResponse* result = (ISYUDITimeResponse*)value;
	NSLog(@"GetStartupTime returned the value: %@", result);
			
}
	

// Handle the response from GetSystemDateTime.
		
- (void) GetSystemDateTimeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYDateTime* result
		ISYDateTime* result = (ISYDateTime*)value;
	NSLog(@"GetSystemDateTime returned the value: %@", result);
			
}
	

// Handle the response from GetSystemOptions.
		
- (void) GetSystemOptionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYSystemOptions* result
		ISYSystemOptions* result = (ISYSystemOptions*)value;
	NSLog(@"GetSystemOptions returned the value: %@", result);
			
}
	

// Handle the response from GetSystemStatus.
		
- (void) GetSystemStatusHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYSystemStatus* result
		ISYSystemStatus* result = (ISYSystemStatus*)value;
	NSLog(@"GetSystemStatus returned the value: %@", result);
			
}
	

// Handle the response from GetVariable.
		
- (void) GetVariableHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYVariable* result
		ISYVariable* result = (ISYVariable*)value;
	NSLog(@"GetVariable returned the value: %@", result);
			
}
	

// Handle the response from GetVariables.
		
- (void) GetVariablesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetVariables returned the value: %@", result);
			
}
	

// Handle the response from InternetAccess.
		
- (void) InternetAccessHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"InternetAccess returned the value: %@", result);
			
}
	

// Handle the response from IsDDNSHostAvail.
		
- (void) IsDDNSHostAvailHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"IsDDNSHostAvail returned the value: %@", result);
			
}
	

// Handle the response from IsSubscribed.
		
- (void) IsSubscribedHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIIntResponse* result
		ISYUDIIntResponse* result = (ISYUDIIntResponse*)value;
	NSLog(@"IsSubscribed returned the value: %@", result);
			
}
	

// Handle the response from MoveNode.
		
- (void) MoveNodeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"MoveNode returned the value: %@", result);
			
}
	

// Handle the response from Query.
		
- (void) QueryHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"Query returned the value: %@", result);
			
}
	

// Handle the response from Reboot.
		
- (void) RebootHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"Reboot returned the value: %@", result);
			
}
	

// Handle the response from RemoveDDNSHost.
		
- (void) RemoveDDNSHostHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RemoveDDNSHost returned the value: %@", result);
			
}
	

// Handle the response from RemoveFolder.
		
- (void) RemoveFolderHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RemoveFolder returned the value: %@", result);
			
}
	

// Handle the response from RemoveFromGroup.
		
- (void) RemoveFromGroupHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RemoveFromGroup returned the value: %@", result);
			
}
	

// Handle the response from RemoveGroup.
		
- (void) RemoveGroupHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RemoveGroup returned the value: %@", result);
			
}
	

// Handle the response from RemoveModem.
		
- (void) RemoveModemHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RemoveModem returned the value: %@", result);
			
}
	

// Handle the response from RemoveNode.
		
- (void) RemoveNodeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RemoveNode returned the value: %@", result);
			
}
	

// Handle the response from RenameFolder.
		
- (void) RenameFolderHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RenameFolder returned the value: %@", result);
			
}
	

// Handle the response from RenameGroup.
		
- (void) RenameGroupHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RenameGroup returned the value: %@", result);
			
}
	

// Handle the response from RenameNetwork.
		
- (void) RenameNetworkHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RenameNetwork returned the value: %@", result);
			
}
	

// Handle the response from RenameNode.
		
- (void) RenameNodeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RenameNode returned the value: %@", result);
			
}
	

// Handle the response from ReplaceDevice.
		
- (void) ReplaceDeviceHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"ReplaceDevice returned the value: %@", result);
			
}
	

// Handle the response from ReplaceModem.
		
- (void) ReplaceModemHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"ReplaceModem returned the value: %@", result);
			
}
	

// Handle the response from RestoreDevice.
		
- (void) RestoreDeviceHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RestoreDevice returned the value: %@", result);
			
}
	

// Handle the response from RestoreDevices.
		
- (void) RestoreDevicesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"RestoreDevices returned the value: %@", result);
			
}
	

// Handle the response from SecuritySystemAction.
		
- (void) SecuritySystemActionHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SecuritySystemAction returned the value: %@", result);
			
}
	

// Handle the response from SendHeartbeat.
		
- (void) SendHeartbeatHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SendHeartbeat returned the value: %@", result);
			
}
	

// Handle the response from SendTestEmail.
		
- (void) SendTestEmailHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SendTestEmail returned the value: %@", result);
			
}
	

// Handle the response from SetBatchMode.
		
- (void) SetBatchModeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetBatchMode returned the value: %@", result);
			
}
	

// Handle the response from SetBatteryDeviceWriteMode.
		
- (void) SetBatteryDeviceWriteModeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetBatteryDeviceWriteMode returned the value: %@", result);
			
}
	

// Handle the response from SetDebugLevel.
		
- (void) SetDebugLevelHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetDebugLevel returned the value: %@", result);
			
}
	

// Handle the response from SetLinkingMode.
		
- (void) SetLinkingModeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetLinkingMode returned the value: %@", result);
			
}
	

// Handle the response from SetNodeEnabled.
		
- (void) SetNodeEnabledHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetNodeEnabled returned the value: %@", result);
			
}
	

// Handle the response from SetNodePowerInfo.
		
- (void) SetNodePowerInfoHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetNodePowerInfo returned the value: %@", result);
			
}
	

// Handle the response from SetNotificationsOptions.
		
- (void) SetNotificationsOptionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetNotificationsOptions returned the value: %@", result);
			
}
	

// Handle the response from SetNTPOptions.
		
- (void) SetNTPOptionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetNTPOptions returned the value: %@", result);
			
}
	

// Handle the response from SetParent.
		
- (void) SetParentHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetParent returned the value: %@", result);
			
}
	

// Handle the response from SetProgramOptions.
		
- (void) SetProgramOptionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetProgramOptions returned the value: %@", result);
			
}
	

// Handle the response from SetSceneProfile.
		
- (void) SetSceneProfileHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetSceneProfile returned the value: %@", result);
			
}
	

// Handle the response from SetSMTPConfig.
		
- (void) SetSMTPConfigHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetSMTPConfig returned the value: %@", result);
			
}
	

// Handle the response from SetSystemDateTime.
		
- (void) SetSystemDateTimeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetSystemDateTime returned the value: %@", result);
			
}
	

// Handle the response from SetUserCredentials.
		
- (void) SetUserCredentialsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetUserCredentials returned the value: %@", result);
			
}
	

// Handle the response from SetVariable.
		
- (void) SetVariableHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SetVariable returned the value: %@", result);
			
}
	

// Handle the response from StartNodesDiscovery.
		
- (void) StartNodesDiscoveryHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"StartNodesDiscovery returned the value: %@", result);
			
}
	

// Handle the response from StopNodesDiscovery.
		
- (void) StopNodesDiscoveryHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"StopNodesDiscovery returned the value: %@", result);
			
}
	

// Handle the response from Subscribe.
		
- (void) SubscribeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYSubscription* result
		ISYSubscription* result = (ISYSubscription*)value;
	NSLog(@"Subscribe returned the value: %@", result);
			
}
	

// Handle the response from SynchWithNTS.
		
- (void) SynchWithNTSHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"SynchWithNTS returned the value: %@", result);
			
}
	

// Handle the response from UDIService.
		
- (void) UDIServiceHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"UDIService returned the value: %@", result);
			
}
	

// Handle the response from Unsubscribe.
		
- (void) UnsubscribeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"Unsubscribe returned the value: %@", result);
			
}
	

// Handle the response from WriteDeviceUpdates.
		
- (void) WriteDeviceUpdatesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the ISYUDIDefaultResponse* result
		ISYUDIDefaultResponse* result = (ISYUDIDefaultResponse*)value;
	NSLog(@"WriteDeviceUpdates returned the value: %@", result);
			
}
	

@end
		