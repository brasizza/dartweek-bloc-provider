import 'package:dartweek/app/dw9_delivery_app.dart';
import 'package:flutter/material.dart';

import 'app/core/config/env/env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Env.instance.load();
  runApp(const Dw9DeliveryApp());
}
