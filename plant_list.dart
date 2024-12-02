
import 'package:flutter/material.dart';
import 'plant_details.dart';

class PlantListScreen extends StatelessWidget {
  final List<Map<String, String>> plants = [
    {'name': 'Cactus', 'image': 'assets/cactus.png'},
    {'name': 'Orchid', 'image': 'assets/orchid.png'},
    {'name': 'Fern', 'image': 'assets/fern.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select a Plant')),
      body: ListView.builder(
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(plants[index]['image']!),
            title: Text(plants[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlantDetailsScreen(
                    plantName: plants[index]['name']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
