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
      body: FlutterMap(
        options: MapOptions(center: LatLng(51.509364, -0.128928), zoom: 10),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 100,
                height: 100,
                point: LatLng(51.509364, -0.128928),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                      child: Text(
                        'Username',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(
                        Icons.location_on_outlined,
                      color: Colors.blue,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
