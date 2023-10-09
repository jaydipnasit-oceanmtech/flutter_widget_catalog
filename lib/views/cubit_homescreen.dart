import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubuit extends StatelessWidget {
  const HomeCubuit({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterCubit counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              counterCubit.increament();
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              counterCubit.dicrerament();
            },
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              if (state is CounterLoading) {
                return const CircularProgressIndicator();
              } else if (state is CounterLoadedState) {
                return Text("${state.count}");
              } else if (state is CounterErrorState) {
                return Text(state.error);
              } else if (state is CounterLoadedState) {
                return Text("${state.selectedDate}");
              } else {
                return const Text("");
              }
            },
          ),
        ),
        ElevatedButton(
            onPressed: () async {
              final selectedDate1 = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );

              if (selectedDate1 != null) {
                counterCubit.pickDate(selectedDate1);
              }
            },
            child: const Text("DATE Pick")),
      ]),
    );
  }
}
