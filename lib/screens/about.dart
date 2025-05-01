import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'image': 'assets/images/item1.jpg', 'caption': 'Caption 1'},
    {'image': 'assets/images/item2.jpg', 'caption': 'Caption 2'},
    {'image': 'assets/images/item3.jpg', 'caption': 'Caption 3'},
    {'image': 'assets/images/item4.jpg', 'caption': 'Caption 4'},
    {'image': 'assets/images/item5.jpg', 'caption': 'Caption 5'},
    {'image': 'assets/images/item6.jpg', 'caption': 'Caption 6'},
  ];

  AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'About Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      items[index]['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(items[index]['caption']!),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
