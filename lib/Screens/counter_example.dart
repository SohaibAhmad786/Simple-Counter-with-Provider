import 'package:counter_example_wit_provider/provider/counter_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterExample extends StatelessWidget {
  const CounterExample({super.key});

  @override
  Widget build(BuildContext context) {
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
                fontSize: 40,
              ),
            ),
          );
        },
      ),
      floatingActionButton: Consumer<CountProvider>(
        builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  value.increment();
                },
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  value.decrement();
                },
                child: const Icon(Icons.remove),
              ),
            ],
          );
        },
      ),
    );
  }
}
