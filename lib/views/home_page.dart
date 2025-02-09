import 'package:counter_provider_app/controllers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Consumer<HomeProvider>(
            builder:(context, value, child) => Text(
              value.counter.toString(),
              style: const TextStyle(fontSize: 100),
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provider.of<HomeProvider>(context,listen: false).addition();
      },child: const Icon(Icons.add),),
    );
  }
}
