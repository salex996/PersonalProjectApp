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


  StreamSubscription<List<ScanResult>?>? _scanSubscription;
  Map<String, dynamic> devicesMap = {};
  List<IBeaconModel> beacons = [];
  bool scanning = false;


int i = 0;
int p = 0;
int t = 0;
  List<ScanResult> scanResult = [];

  //Start Scanning
  await FlutterBluePlus.startScan(timeout: const Duration(seconds: 10), androidUsesFineLocation: true);
  scanning = true;

   _scanSubscription = FlutterBluePlus.scanResults.listen((scanResult) {
  //var _scanSubscription = FlutterBluePlus.scanResults.listen((scanResult) {
    for (var result in scanResult) {
      i=i+1;
      Map<String, dynamic> iBeaconData = convertAdvertisementDataToIBeaconData(result);
      if (iBeaconData.isNotEmpty) {
        p=p+1;
        IBeaconModel beacon = IBeaconModel.fromMap(iBeaconData);
        // Add to list of beacons if not already in list based on remoteID
        if (!beacons.any((element) => element.remoteId == beacon.remoteId)) {
            t=t+1;
            beacons.add(beacon);

        }
      }
    }
  });
  FlutterBluePlus.cancelWhenScanComplete(_scanSubscription);
  await FlutterBluePlus.isScanning.where((value) => value == false).first;
  scanning = false;

  return beacons;

}




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
    iBeaconData['uuid'] = IBeaconModel.convertToUUID(data.sublist(2, 18));
    iBeaconData['major'] = IBeaconModel.convertToInt(data.sublist(18, 20));
    iBeaconData['minor'] = IBeaconModel.convertToInt(data.sublist(20, 22));
    iBeaconData['pwr'] = data[22];
    iBeaconData['rssi'] = scanResult.rssi;
  }

  return iBeaconData;
}



