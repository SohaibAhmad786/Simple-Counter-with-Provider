import 'package:counter_example_wit_provider/provider/counter_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  @override
  Widget build(BuildContext context) {
    final obj = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider Example a simple Counter",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Consumer<CountProvider>(
        builder: (context, value, child) {
          return Center(
            child: Text(
              value.count.toString(),
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          obj.setCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
