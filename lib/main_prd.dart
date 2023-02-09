import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'main.dart';

void main() {
  FlavorConfig(
    name: "prd",
    color: Colors.blue,
    location: BannerLocation.bottomStart,
    variables: {
      "title": "My App Prd",
    },
  );
  return runApp(const MyApp());
}