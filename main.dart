import 'package:flutter/material.dart';
import 'plant_list.dart';

void main() => runApp(PlantCareApp());

class PlantCareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Care Assistant',
      theme: ThemeData(primarySwatch: Colors.green),
      home: PlantListScreen(),
    );
  }
}