import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:newproject/components/toolbar.dart';
import 'package:newproject/config/app_strings.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1A2947),
      appBar: Toolbar(title: AppStrings.nearby),
      body: FlutterMap(options: MapOptions(
        center: LatLng(51.509364, -0.128928),
        zoom: 10
      ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',

          ),
          MarkerLayer(
              markers: [
            Marker(point: LatLng(51.509364, -0.128928),
                height: 100,
                width: 50,
                child: Container(
                  color: Colors.red,
                ),
            )
          ])
      ],
),
    );
  }
}
