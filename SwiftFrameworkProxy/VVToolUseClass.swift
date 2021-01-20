//
//  VVToolUseClass.swift
//  SwiftFrameworkProxy
//
//  Created by Somaye Ebrahimi on 1/13/21.
//

import Foundation

@objc
public class VVToolUseClass : NSObject
{
    var rssi : Int { get{ return self.rssi } set{} }

    var name : String { get{ return self.name } set{} }

    var fwVersion : String { get{ return self.fwVersion } set{} }

    var password : String { get{ return self.password } set{} }

    var isEnc : Bool { get{ return self.isEnc } set{} }

    var scanTimeout : NSInteger { get{ return self.scanTimeout } set{} }

    var connectRetry : NSInteger { get{ return self.connectRetry } set{} }

    var connectTimeout : NSInteger { get{ return self.connectTimeout } set{} }
}

@objc
public class VitalCommand : NSObject
{
    var deviceId : String { get{ return self.deviceId } set{} }

    var timeOut : NSInteger { get{ return self.timeOut } set{} }

    var vitalType : Vital_CommandType { get{ return self.vitalType } set{} }
    
    var info : String { get { return self.info } set{} }
}

@objc
public class CardiacCommand : NSObject
{
    var deviceId : String { get{ return self.deviceId } set{} }

    var timeOut : NSInteger { get{ return self.timeOut } set{} }

    var cardiacType : Cardiac_CommandType { get{ return self.cardiacType } set{} }

    var info : String { get { return self.info } set{} }
}
