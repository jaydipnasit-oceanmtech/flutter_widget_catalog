import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/count_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocHomeScreen extends StatefulWidget {
  const BlocHomeScreen({super.key});

  @override
  State<BlocHomeScreen> createState() => _BlocHomeScreenState();
}

class _BlocHomeScreenState extends State<BlocHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CountBloc>().add(Increment()),
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CountBloc>().add(Decrement()),
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        BlocBuilder<CountBloc, int>(
          builder: (context, state) {
            return Center(
                child: Text(
              "$state",
              style: const TextStyle(fontSize: 23),
            ));
          },
        )
      ]),
    );
  }
}
