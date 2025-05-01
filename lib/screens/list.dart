import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.cyan,
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'List Screen',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: Icon(Icons.list),
                title: Text(items[index]),
              ),
              childCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
