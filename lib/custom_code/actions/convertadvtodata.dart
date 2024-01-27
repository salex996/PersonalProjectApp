import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';


Map<String, dynamic> convertAdvertisementDataToIBeaconData(ScanResult scanResult) {
  Map<String, dynamic> iBeaconData = {};

  if (scanResult.advertisementData.manufacturerData.containsKey(76) &&
      scanResult.advertisementData.manufacturerData[76]!.length == 23 &&
      scanResult.advertisementData.manufacturerData[76]![0] == 2 &&
      scanResult.advertisementData.manufacturerData[76]![1] == 21) {
    // print(">>>>> iBeacon found: ${scanResult.advertisementData.manufacturerData[76]}");
    List<int>? data = scanResult.advertisementData.manufacturerData[76];
    iBeaconData['remoteId'] = scanResult.device.remoteId.str;
    iBeaconData['type'] = data![0];
    iBeaconData['length'] = data[1];

    iBeaconData['pwr'] = data[22];
    iBeaconData['rssi'] = scanResult.rssi;
  }

  return iBeaconData;
}


