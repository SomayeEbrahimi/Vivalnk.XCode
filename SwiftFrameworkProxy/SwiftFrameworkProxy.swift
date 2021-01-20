//
//  SwiftFrameworkProxy.swift
//  SwiftFrameworkProxy
//
//  Created by Somaye Ebrahimi on 12/29/20.
//

import Foundation
import VivalnkSDK
    
@objc
public class vlBLEDelegates : NSObject
{
    public func onReceiveData(id:Data) -> Void {
        VivalnkSDK.onReceiveData(id);
    }

    public func onReceivedBatteryStatus(id:result) -> Void {
        VivalnkSDK.onReceivedBatteryStatus(id);
    }

    public func onStart(id:type) -> Void {
        VivalnkSDK.onStart(id);
    }

    public func onComplete(id:result) -> Void {
        VivalnkSDK.onComplete(id);
    }

    public func onError(id:error) -> Void {
        VivalnkSDK.onError(id);
    }
}

@objc
    public class BluetoothConnectListenerDelegate : NSObject
{
    public func onDisconnected(device:VVToolUseClass ,isForce:Bool) -> Void {
        VivalnkSDK.onDisconnected(device,isForce);
    }
    
    public func onConnected(device:VVToolUseClass) -> Void {
        VivalnkSDK.onConnected(device);
    }

    public func connectOnError(code:Int, msg:String) -> Void {
        VivalnkSDK.connectOnError(code,msg);
    }
     
    public func onResume(deviceId:String) -> Bool {
        return VivalnkSDK.onResume(deviceId);
    }

    public func connectOnStart() -> Void {
        VivalnkSDK.connectOnStart();
    }

    public func onServiceReady() -> Void {
        VivalnkSDK.onServiceReady();
    }
}

@objc
public class BluetoothScanListenerDelegate : NSObject
{
    public func onDeviceFound(device:VVToolUseClass) -> Void {
        VivalnkSDK.onDeviceFound(device);
    }

    public func onScanError(code:Int, msg:String) -> Void {
        VivalnkSDK.onScanError(code,msg);
    }
}

@objc
public class BluetoothStateListenerDelegate : NSObject
{
    public func onBluetoothOpen() -> Void {
        VivalnkSDK.onBluetoothOpen();
    }

    public func onBluetoothClose() -> Void {
        VivalnkSDK.onBluetoothClose();
    }

    public func OnBluetoothSwitchToOnStatus() -> Void {
        VivalnkSDK.OnBluetoothSwitchToOnStatus();
    }
}

@objc
public class VVBleManager : NSObject
{
    var bleReconnectEnabled : Bool { get {} set{} }
    
    var isConnected : Bool { get {} }

    var delegate : vlBLEDelegates

    var delegate : id<vlBLEDelegates> { get{} set{} }
   
    var connectDelegate : BluetoothConnectListenerDelegate { get{} set{} }

    var connectDelegate : id<BluetoothConnectListenerDelegate> {  get{} set{} }

    var scanDelegate : BluetoothScanListenerDelegate { get{} set{} }

    var scanDelegate : id<BluetoothScanListenerDelegate> { get{} set{} }

    var bleStateDelegate : BluetoothStateListenerDelegate  { get{} set{} }

    var bleStateDelegate :id<BluetoothStateListenerDelegate> { get{} set{} }
       
    public func startScan(options:VVToolUseClass, deviceType:ScanDeviceType) -> Void {
        VivalnkSDK.startScan(options,deviceType);
    }
    
    public func stopScan() -> Void {
        VivalnkSDK.stopScan();
    }
      
    public func connect(options:VVToolUseClass) -> Void {
        VivalnkSDK.connect(options);
    }

    public func disconnect(deviceType:ScanDeviceType,deviceId:String) -> Void {
        VivalnkSDK.disconnect(deviceType,deviceId);
    }

    public func sendCardiacCommand(request:CardiacCommand) -> Void {
        VivalnkSDK.sendCardiacCommand(request);
    }

    public func sendVitalCommand(request:VitalCommand) -> Void {
        VivalnkSDK.sendVitalCommand(request);
    }

    public func getAllConnectedDeviceID() -> NSArray {
        return VivalnkSDK.getAllConnectedDeviceID();
    }

    public func checkBle() -> Int {
        return VivalnkSDK.checkBle();
    }

    public func version() -> String {
        return VivalnkSDK.version();
    }

    public func printLog(show:Bool) -> Void {
        return VivalnkSDK.printLog();
    }

    public func enableAutoDataSampling() -> Void {
        VivalnkSDK.enableAutoDataSampling();
    }

    public func callbackACKCommand(deviceName:String) -> Bool {
        return VivalnkSDK.callbackACKCommand(deviceName);
    }
   }
