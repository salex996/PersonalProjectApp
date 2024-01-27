// Automatic FlutterFlow imports
/*import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';*/

import 'dart:async';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';




Future<List<IBeaconModel>>findDevices() async {


  Map<String, dynamic> devicesMap = {};
  List<IBeaconModel> beacons = [];
  bool scanning = false;

  List<ScanResult> scanResult;
 late StreamSubscription<List<ScanResult>?>? _scanSubscription;
  //Start Scanning
  await FlutterBluePlus.startScan(timeout: const Duration(seconds: 4), androidUsesFineLocation: true);


  _scanSubscription = FlutterBluePlus.scanResults.listen((scanResult) {

    for (ScanResult result in scanResult) {
      Map<String, dynamic> iBeaconData = convertAdvertisementDataToIBeaconData(result);

      if (iBeaconData.isNotEmpty) {
        IBeaconModel beacon = IBeaconModel.fromMap(iBeaconData);

        // Add to list of beacons if not already in list based on remoteID
        if (!beacons.any((element) => element.remoteId == beacon.remoteId)) {

            beacons.add(beacon);

        }
      }
    }
  });

  FlutterBluePlus.cancelWhenScanComplete(_scanSubscription);
  await FlutterBluePlus.isScanning.where((value) => value == false).first;

  return beacons;

}




Map<String, dynamic> convertAdvertisementDataToIBeaconData(ScanResult results) {
  Map<String, dynamic> iBeaconData = {};

  if (results.advertisementData.manufacturerData.containsKey(76) &&
      results.advertisementData.manufacturerData[76]!.length == 23 &&
      results.advertisementData.manufacturerData[76]![0] == 2 &&
      results.advertisementData.manufacturerData[76]![1] == 21) {
    // print(">>>>> iBeacon found: ${scanResult.advertisementData.manufacturerData[76]}");
    List<int>? data = results.advertisementData.manufacturerData[76];
    iBeaconData['remoteId'] = results.device.remoteId.str;
    iBeaconData['platformName'] = results.device.platformName;
    iBeaconData['type'] = data![0];
    iBeaconData['length'] = data[1];
    iBeaconData['uuid'] = IBeaconModel.convertToUUID(data.sublist(2, 18));
    iBeaconData['major'] = IBeaconModel.convertToInt(data.sublist(18, 20));
    iBeaconData['minor'] = IBeaconModel.convertToInt(data.sublist(20, 22));
    iBeaconData['pwr'] = data[22];
    iBeaconData['rssi'] = results.rssi;
  }

  return iBeaconData;
}


