
import 'package:flutter/material.dart';

class PlantDetailsScreen extends StatelessWidget {
  final String plantName;

  PlantDetailsScreen({required this.plantName});

  final Map<String, Map<String, String>> plantDetails = {
    'Cactus': {
      'Watering': 'Once every two weeks.',
      'Light': 'Bright, indirect sunlight.',
      'Tip': 'Avoid overwatering to prevent root rot.',
    },
    'Orchid': {
      'Watering': 'Once a week.',
      'Light': 'Bright, indirect sunlight.',
      'Tip': 'Ensure proper drainage in the pot.',
    },
    'Fern': {
      'Watering': 'Keep soil consistently moist.',
      'Light': 'Indirect sunlight or partial shade.',
      'Tip': 'Mist leaves regularly to maintain humidity.',
    },
  };

  @override
  Widget build(BuildContext context) {
    final details = plantDetails[plantName]!;
    return Scaffold(
      appBar: AppBar(title: Text('$plantName Care')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Watering: ${details['Watering']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Light: ${details['Light']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Tip: ${details['Tip']}',
            style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Plant List'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}