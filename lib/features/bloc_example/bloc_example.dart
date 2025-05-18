import 'package:bloc/bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      body: BlocBuilder<ExampleBloc, ExampleState>(builder: (context, state) {
        if (state is ExampleDataState) {
          return ListView.builder(
            itemCount: state.names.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.names[index]),
              );
            },
          );
        } else {
          return const Center(child: Text('No data found'));
        }
      }),
    );
  }
}
