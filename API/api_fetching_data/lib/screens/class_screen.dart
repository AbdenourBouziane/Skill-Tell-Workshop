import 'package:api_fetching_data/configuration/api_service.dart';
import 'package:flutter/material.dart';

class ClassDetailsScreen extends StatelessWidget {
  const ClassDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Class Details'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: ApiService.getClassesFromApi(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final classData = snapshot.data!;
              return ListView.builder(
                itemCount: classData.length,
                itemBuilder: (context, index) {
                  final Map<String, dynamic> classItem = classData[index];
                  return ListTile(
                    title: Text(classItem['className']),
                    subtitle: Text(classItem['classTime']),
                    onTap: () {},
                  );
                },
              );
            } else {
              return const Text('No data available');
            }
          },
        ),
      ),
    );
  }
}
