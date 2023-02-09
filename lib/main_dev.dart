import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'main.dart';

void main() {
  FlavorConfig(
    name: "dev",
    color: Colors.red,
    location: BannerLocation.bottomStart,
    variables: {
      "title": "My App Dev",
    },
  );
  return runApp(const MyApp());
}