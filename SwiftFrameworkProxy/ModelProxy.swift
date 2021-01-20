//
//  ModelProxy.swift
//  SwiftFrameworkProxy
//
//  Created by Somaye Ebrahimi on 1/10/21.
//

import Foundation

public enum VVLogLevel : Int64
{
  case Debug = 0
  case Verbose = 1
  case Info = 5
  case Application = 10
  case Warning = 15
  case Error = 20
}

public enum Cardiac_CommandType : Int64
{
     case startSampling
     case stopSampling
     case shutDownDevice
     case patchSelfTest
     case patchSetClock
     case eraseFlash
     case QureyFlash
     case setUserInfo
     case readUserInfo
     case eraseUserInfo
     case readSn
     case readPatchVersion
     case sendRF
     case enableOTA
     case checkPatchStatus
     case activeStatus
     case setCollectBPfrequency
     case readCollectBPfrequency
}

public enum Vital_CommandType : Int64
{
     case  startSampling
     case  stopSampling
     case  shutDownDevice
     case  patchSelfTest
     case  patchSetClock
     case  enableModeZero
     case  enableModeOne
     case  enableModeTwo
     case  enableModeThree
     case  uploadFlash
     case  cancelUploadFlash
     case  eraseFlash
     case  QureyFlash
     case  setUserInfo
     case  readUserInfo
     case  eraseUserInfo
     case  readSn
     case  readPatchVersion
     case  sendRF
     case  enableOTA
     case  checkPatchStatus
     case  flashReceivedFinish
     case  sendACKofSdkRecieveRawData
     case  heartBeatCommand
     case  ackOfSdkRecieveRawData
}

public enum ScanDeviceType : Int64
{
     case FeverDevice = 200
     case VitalDevice = 310
     case CardiacDevice = 330
     case SpO2Device = 400
}
