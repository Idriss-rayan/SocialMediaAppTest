import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:newproject/components/toolbar.dart';
import 'package:newproject/config/app_strings.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.appName),
      body: FlutterMap(options: options, children: children)
    );
  }
}
