// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<bool> isBluetoothEnabled() async {
  await FlutterBluePlus.isOn;
  await Future.delayed(Duration(milliseconds: 100));
  final state = await FlutterBluePlus.state.first;
  if (state == BluetoothState.on) {
    return true;
  }
  return false;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
