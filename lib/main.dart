import 'package:dw9_delivery/app/core/config/env/env.dart';
import 'package:dw9_delivery/app/dw9_delivery_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Env.instance.load();
  runApp(const Dw9DeliveryApp());
}
